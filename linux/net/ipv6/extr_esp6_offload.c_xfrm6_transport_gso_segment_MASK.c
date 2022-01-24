#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ header_len; } ;
struct xfrm_state {TYPE_2__ props; } ;
struct xfrm_offload {size_t proto; } ;
struct sk_buff {int /*<<< orphan*/  transport_header; } ;
struct TYPE_3__ {struct sk_buff* (* gso_segment ) (struct sk_buff*,int /*<<< orphan*/ ) ;} ;
struct net_offload {TYPE_1__ callbacks; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * inet6_offloads ; 
 scalar_t__ FUNC1 (int) ; 
 struct net_offload* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct xfrm_offload* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct xfrm_state *x,
						   struct sk_buff *skb,
						   netdev_features_t features)
{
	const struct net_offload *ops;
	struct sk_buff *segs = FUNC0(-EINVAL);
	struct xfrm_offload *xo = FUNC4(skb);

	skb->transport_header += x->props.header_len;
	ops = FUNC2(inet6_offloads[xo->proto]);
	if (FUNC1(ops && ops->callbacks.gso_segment))
		segs = ops->callbacks.gso_segment(skb, features);

	return segs;
}