#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ protocol; } ;
struct ila_lwt {int /*<<< orphan*/  lwt_output; } ;
struct dst_entry {TYPE_1__* lwtstate; } ;
struct TYPE_3__ {int (* orig_input ) (struct sk_buff*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ila_lwt* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct dst_entry* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC5(skb);
	struct ila_lwt *ilwt = FUNC1(dst->lwtstate);

	if (skb->protocol != FUNC0(ETH_P_IPV6))
		goto drop;

	if (!ilwt->lwt_output)
		FUNC3(skb,
					FUNC2(dst->lwtstate),
					false);

	return dst->lwtstate->orig_input(skb);

drop:
	FUNC4(skb);
	return -EINVAL;
}