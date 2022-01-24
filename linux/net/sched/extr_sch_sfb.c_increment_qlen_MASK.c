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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct sfb_sched_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,struct sfb_sched_data*) ; 
 scalar_t__ FUNC1 (struct sk_buff const*,int) ; 

__attribute__((used)) static void FUNC2(const struct sk_buff *skb, struct sfb_sched_data *q)
{
	u32 sfbhash;

	sfbhash = FUNC1(skb, 0);
	if (sfbhash)
		FUNC0(sfbhash, 0, q);

	sfbhash = FUNC1(skb, 1);
	if (sfbhash)
		FUNC0(sfbhash, 1, q);
}