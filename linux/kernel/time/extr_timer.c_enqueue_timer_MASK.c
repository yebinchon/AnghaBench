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
struct timer_list {int /*<<< orphan*/  flags; int /*<<< orphan*/  expires; int /*<<< orphan*/  entry; } ;
struct timer_base {int /*<<< orphan*/  pending_map; scalar_t__ vectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct timer_list*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_base *base, struct timer_list *timer,
			  unsigned int idx)
{
	FUNC1(&timer->entry, base->vectors + idx);
	FUNC0(idx, base->pending_map);
	FUNC2(timer, idx);

	FUNC3(timer, timer->expires, timer->flags);
}