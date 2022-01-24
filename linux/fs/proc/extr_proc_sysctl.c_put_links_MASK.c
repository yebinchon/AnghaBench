#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ctl_table_set {int dummy; } ;
struct ctl_table_root {int dummy; } ;
struct ctl_table_header {struct ctl_table* ctl_table; struct ctl_table_set* set; struct ctl_dir* parent; struct ctl_table_root* root; } ;
struct ctl_table {char* procname; struct ctl_table_root* data; int /*<<< orphan*/  mode; } ;
struct ctl_dir {int dummy; } ;
struct TYPE_2__ {struct ctl_table_set default_set; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ctl_dir*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_table_header*) ; 
 struct ctl_table* FUNC4 (struct ctl_table_header**,struct ctl_dir*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ctl_dir*) ; 
 TYPE_1__ sysctl_table_root ; 
 struct ctl_dir* FUNC9 (struct ctl_table_set*,struct ctl_dir*) ; 

__attribute__((used)) static void FUNC10(struct ctl_table_header *header)
{
	struct ctl_table_set *root_set = &sysctl_table_root.default_set;
	struct ctl_table_root *root = header->root;
	struct ctl_dir *parent = header->parent;
	struct ctl_dir *core_parent;
	struct ctl_table *entry;

	if (header->set == root_set)
		return;

	core_parent = FUNC9(root_set, parent);
	if (FUNC0(core_parent))
		return;

	for (entry = header->ctl_table; entry->procname; entry++) {
		struct ctl_table_header *link_head;
		struct ctl_table *link;
		const char *name = entry->procname;

		link = FUNC4(&link_head, core_parent, name, FUNC7(name));
		if (link &&
		    ((FUNC1(link->mode) && FUNC1(entry->mode)) ||
		     (FUNC2(link->mode) && (link->data == root)))) {
			FUNC3(link_head);
		}
		else {
			FUNC6("sysctl link missing during unregister: ");
			FUNC8(parent);
			FUNC5("/%s\n", name);
		}
	}
}