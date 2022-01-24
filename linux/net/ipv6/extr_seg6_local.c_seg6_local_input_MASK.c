#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ protocol; } ;
struct seg6_local_lwt {struct seg6_action_desc* desc; } ;
struct seg6_action_desc {int (* input ) (struct sk_buff*,struct seg6_local_lwt*) ;} ;
struct dst_entry {int /*<<< orphan*/  lwtstate; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct seg6_local_lwt* FUNC2 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,struct seg6_local_lwt*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	struct dst_entry *orig_dst = FUNC3(skb);
	struct seg6_action_desc *desc;
	struct seg6_local_lwt *slwt;

	if (skb->protocol != FUNC0(ETH_P_IPV6)) {
		FUNC1(skb);
		return -EINVAL;
	}

	slwt = FUNC2(orig_dst->lwtstate);
	desc = slwt->desc;

	return desc->input(skb, slwt);
}