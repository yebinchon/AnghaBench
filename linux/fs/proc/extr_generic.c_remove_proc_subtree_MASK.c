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
struct proc_dir_entry {scalar_t__ nlink; int /*<<< orphan*/  mode; struct proc_dir_entry* parent; int /*<<< orphan*/  subdir; int /*<<< orphan*/  subdir_node; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,struct proc_dir_entry**,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_dir_entry*) ; 
 struct proc_dir_entry* FUNC3 (struct proc_dir_entry*,char const*,unsigned int) ; 
 struct proc_dir_entry* FUNC4 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  proc_subdir_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(const char *name, struct proc_dir_entry *parent)
{
	struct proc_dir_entry *root = NULL, *de, *next;
	const char *fn = name;
	unsigned int len;

	FUNC8(&proc_subdir_lock);
	if (FUNC1(name, &parent, &fn) != 0) {
		FUNC9(&proc_subdir_lock);
		return -ENOENT;
	}
	len = FUNC7(fn);

	root = FUNC3(parent, fn, len);
	if (!root) {
		FUNC9(&proc_subdir_lock);
		return -ENOENT;
	}
	FUNC6(&root->subdir_node, &parent->subdir);

	de = root;
	while (1) {
		next = FUNC4(de);
		if (next) {
			FUNC6(&next->subdir_node, &de->subdir);
			de = next;
			continue;
		}
		FUNC9(&proc_subdir_lock);

		FUNC5(de);
		next = de->parent;
		if (FUNC0(de->mode))
			next->nlink--;
		de->nlink = 0;
		if (de == root)
			break;
		FUNC2(de);

		FUNC8(&proc_subdir_lock);
		de = next;
	}
	FUNC2(root);
	return 0;
}