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
struct css_task_iter {scalar_t__ cur_task; scalar_t__ cur_dcset; scalar_t__ cur_cset; int /*<<< orphan*/  iters_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct css_task_iter *it)
{
	if (it->cur_cset) {
		FUNC4(&css_set_lock);
		FUNC0(&it->iters_node);
		FUNC2(it->cur_cset);
		FUNC5(&css_set_lock);
	}

	if (it->cur_dcset)
		FUNC1(it->cur_dcset);

	if (it->cur_task)
		FUNC3(it->cur_task);
}