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
struct css_set {int /*<<< orphan*/  mg_tasks; int /*<<< orphan*/  tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct css_set *cset)
{
	FUNC1(&css_set_lock);

	return !FUNC0(&cset->tasks) || !FUNC0(&cset->mg_tasks);
}