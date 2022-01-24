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
struct sk_buff {int dummy; } ;
typedef  enum skb_free_reason { ____Placeholder_skb_free_reason } skb_free_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(struct sk_buff *skb, enum skb_free_reason reason)
{
	if (FUNC2() || FUNC3())
		FUNC0(skb, reason);
	else
		FUNC1(skb);
}