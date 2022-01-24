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
struct timer_list {int /*<<< orphan*/  expires; } ;
struct timer_base {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_base*,struct timer_list*,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct timer_base *base, struct timer_list *timer)
{
	unsigned int idx;

	idx = FUNC0(timer->expires, base->clk);
	FUNC1(base, timer, idx);
}