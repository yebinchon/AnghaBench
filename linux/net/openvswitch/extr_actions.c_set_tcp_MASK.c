#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {scalar_t__ source; scalar_t__ dest; int /*<<< orphan*/  check; } ;
struct TYPE_2__ {scalar_t__ dst; scalar_t__ src; } ;
struct sw_flow_key {TYPE_1__ tp; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_tcp {int /*<<< orphan*/  tcp_dst; int /*<<< orphan*/  tcp_src; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 struct tcphdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct sw_flow_key *flow_key,
		   const struct ovs_key_tcp *key,
		   const struct ovs_key_tcp *mask)
{
	struct tcphdr *th;
	__be16 src, dst;
	int err;

	err = FUNC4(skb, FUNC5(skb) +
				  sizeof(struct tcphdr));
	if (FUNC7(err))
		return err;

	th = FUNC6(skb);
	src = FUNC0(th->source, key->tcp_src, mask->tcp_src);
	if (FUNC1(src != th->source)) {
		FUNC2(skb, &th->source, src, &th->check);
		flow_key->tp.src = src;
	}
	dst = FUNC0(th->dest, key->tcp_dst, mask->tcp_dst);
	if (FUNC1(dst != th->dest)) {
		FUNC2(skb, &th->dest, dst, &th->check);
		flow_key->tp.dst = dst;
	}
	FUNC3(skb);

	return 0;
}