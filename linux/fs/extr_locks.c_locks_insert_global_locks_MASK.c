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
struct file_lock_list_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  hlist; } ;
struct file_lock {int /*<<< orphan*/  fl_link; int /*<<< orphan*/  fl_link_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  file_lock_list ; 
 int /*<<< orphan*/  file_rwsem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct file_lock_list_struct* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct file_lock *fl)
{
	struct file_lock_list_struct *fll = FUNC5(&file_lock_list);

	FUNC1(&file_rwsem);

	FUNC3(&fll->lock);
	fl->fl_link_cpu = FUNC2();
	FUNC0(&fl->fl_link, &fll->hlist);
	FUNC4(&fll->lock);
}