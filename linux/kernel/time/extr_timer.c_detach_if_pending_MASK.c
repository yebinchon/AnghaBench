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
struct timer_list {int /*<<< orphan*/  entry; } ;
struct timer_base {int /*<<< orphan*/  pending_map; scalar_t__ vectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC3 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct timer_list*) ; 

__attribute__((used)) static int FUNC5(struct timer_list *timer, struct timer_base *base,
			     bool clear_pending)
{
	unsigned idx = FUNC3(timer);

	if (!FUNC4(timer))
		return 0;

	if (FUNC2(&timer->entry, base->vectors + idx))
		FUNC0(idx, base->pending_map);

	FUNC1(timer, clear_pending);
	return 1;
}