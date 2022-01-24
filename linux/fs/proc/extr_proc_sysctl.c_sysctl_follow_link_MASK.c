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
struct ctl_table_set {int dummy; } ;
struct ctl_table_root {int dummy; } ;
struct ctl_table_header {int /*<<< orphan*/  parent; } ;
struct ctl_table {char* procname; struct ctl_table_root* data; } ;
struct ctl_dir {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ctl_dir*) ; 
 int FUNC1 (struct ctl_dir*) ; 
 struct ctl_table* FUNC2 (struct ctl_table_header**,struct ctl_dir*,char const*,int /*<<< orphan*/ ) ; 
 struct ctl_table_set* FUNC3 (struct ctl_table_root*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  sysctl_lock ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_table_header*) ; 
 scalar_t__ FUNC8 (struct ctl_table_header*) ; 
 struct ctl_dir* FUNC9 (struct ctl_table_set*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ctl_table_header **phead,
	struct ctl_table **pentry)
{
	struct ctl_table_header *head;
	struct ctl_table_root *root;
	struct ctl_table_set *set;
	struct ctl_table *entry;
	struct ctl_dir *dir;
	int ret;

	ret = 0;
	FUNC4(&sysctl_lock);
	root = (*pentry)->data;
	set = FUNC3(root);
	dir = FUNC9(set, (*phead)->parent);
	if (FUNC0(dir))
		ret = FUNC1(dir);
	else {
		const char *procname = (*pentry)->procname;
		head = NULL;
		entry = FUNC2(&head, dir, procname, FUNC6(procname));
		ret = -ENOENT;
		if (entry && FUNC8(head)) {
			FUNC7(*phead);
			*phead = head;
			*pentry = entry;
			ret = 0;
		}
	}

	FUNC5(&sysctl_lock);
	return ret;
}