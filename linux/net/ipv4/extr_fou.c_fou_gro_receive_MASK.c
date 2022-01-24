#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  gro_receive; } ;
struct net_offload {TYPE_1__ callbacks; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {int is_fou; scalar_t__ is_ipv6; scalar_t__ encap_mark; } ;
struct TYPE_5__ {size_t protocol; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,struct list_head*,struct sk_buff*) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 struct net_offload** inet6_offloads ; 
 struct net_offload** inet_offloads ; 
 struct net_offload* FUNC3 (struct net_offload const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct sock *sk,
				       struct list_head *head,
				       struct sk_buff *skb)
{
	u8 proto = FUNC2(sk)->protocol;
	const struct net_offload **offloads;
	const struct net_offload *ops;
	struct sk_buff *pp = NULL;

	/* We can clear the encap_mark for FOU as we are essentially doing
	 * one of two possible things.  We are either adding an L4 tunnel
	 * header to the outer L3 tunnel header, or we are are simply
	 * treating the GRE tunnel header as though it is a UDP protocol
	 * specific header such as VXLAN or GENEVE.
	 */
	FUNC0(skb)->encap_mark = 0;

	/* Flag this frame as already having an outer encap header */
	FUNC0(skb)->is_fou = 1;

	FUNC4();
	offloads = FUNC0(skb)->is_ipv6 ? inet6_offloads : inet_offloads;
	ops = FUNC3(offloads[proto]);
	if (!ops || !ops->callbacks.gro_receive)
		goto out_unlock;

	pp = FUNC1(ops->callbacks.gro_receive, head, skb);

out_unlock:
	FUNC5();

	return pp;
}