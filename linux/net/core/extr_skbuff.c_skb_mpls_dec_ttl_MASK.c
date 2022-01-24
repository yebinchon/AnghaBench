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
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  label_stack_entry; } ;

/* Variables and functions */
 int EINVAL ; 
 int MPLS_LS_TTL_MASK ; 
 int MPLS_LS_TTL_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct sk_buff *skb)
{
	u32 lse;
	u8 ttl;

	if (FUNC5(!FUNC2(skb->protocol)))
		return -EINVAL;

	lse = FUNC0(FUNC3(skb)->label_stack_entry);
	ttl = (lse & MPLS_LS_TTL_MASK) >> MPLS_LS_TTL_SHIFT;
	if (!--ttl)
		return -EINVAL;

	lse &= ~MPLS_LS_TTL_MASK;
	lse |= ttl << MPLS_LS_TTL_SHIFT;

	return FUNC4(skb, FUNC1(lse));
}