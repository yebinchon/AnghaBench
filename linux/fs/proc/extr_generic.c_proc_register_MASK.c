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
struct proc_dir_entry {int /*<<< orphan*/  low_ino; int /*<<< orphan*/  name; struct proc_dir_entry* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_dir_entry*) ; 
 int FUNC2 (struct proc_dir_entry*,struct proc_dir_entry*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_subdir_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct proc_dir_entry *FUNC7(struct proc_dir_entry *dir,
		struct proc_dir_entry *dp)
{
	if (FUNC3(&dp->low_ino))
		goto out_free_entry;

	FUNC5(&proc_subdir_lock);
	dp->parent = dir;
	if (FUNC2(dir, dp) == false) {
		FUNC0(1, "proc_dir_entry '%s/%s' already registered\n",
		     dir->name, dp->name);
		FUNC6(&proc_subdir_lock);
		goto out_free_inum;
	}
	FUNC6(&proc_subdir_lock);

	return dp;
out_free_inum:
	FUNC4(dp->low_ino);
out_free_entry:
	FUNC1(dp);
	return NULL;
}