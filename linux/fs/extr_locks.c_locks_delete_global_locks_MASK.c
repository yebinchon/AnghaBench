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
struct file_lock_list_struct {int /*<<< orphan*/  lock; } ;
struct file_lock {int /*<<< orphan*/  fl_link; int /*<<< orphan*/  fl_link_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  file_lock_list ; 
 int /*<<< orphan*/  file_rwsem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct file_lock_list_struct* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct file_lock *fl)
{
	struct file_lock_list_struct *fll;

	FUNC3(&file_rwsem);

	/*
	 * Avoid taking lock if already unhashed. This is safe since this check
	 * is done while holding the flc_lock, and new insertions into the list
	 * also require that it be held.
	 */
	if (FUNC1(&fl->fl_link))
		return;

	fll = FUNC2(&file_lock_list, fl->fl_link_cpu);
	FUNC4(&fll->lock);
	FUNC0(&fl->fl_link);
	FUNC5(&fll->lock);
}