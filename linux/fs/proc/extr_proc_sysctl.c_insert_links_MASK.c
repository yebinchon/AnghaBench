#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ctl_table_set {int dummy; } ;
struct ctl_table_header {int /*<<< orphan*/  root; int /*<<< orphan*/  ctl_table; int /*<<< orphan*/  parent; struct ctl_table_set* set; } ;
struct TYPE_4__ {int /*<<< orphan*/  nreg; } ;
struct ctl_dir {TYPE_2__ header; } ;
struct TYPE_3__ {struct ctl_table_set default_set; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct ctl_dir*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct ctl_dir*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ctl_dir*,struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_table_header*) ; 
 struct ctl_table_header* FUNC5 (struct ctl_dir*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_lock ; 
 TYPE_1__ sysctl_table_root ; 
 struct ctl_dir* FUNC8 (struct ctl_table_set*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ctl_table_header *head)
{
	struct ctl_table_set *root_set = &sysctl_table_root.default_set;
	struct ctl_dir *core_parent = NULL;
	struct ctl_table_header *links;
	int err;

	if (head->set == root_set)
		return 0;

	core_parent = FUNC8(root_set, head->parent);
	if (FUNC0(core_parent))
		return 0;

	if (FUNC2(core_parent, head->ctl_table, head->root))
		return 0;

	core_parent->header.nreg++;
	FUNC7(&sysctl_lock);

	links = FUNC5(core_parent, head->ctl_table, head->root);

	FUNC6(&sysctl_lock);
	err = -ENOMEM;
	if (!links)
		goto out;

	err = 0;
	if (FUNC2(core_parent, head->ctl_table, head->root)) {
		FUNC4(links);
		goto out;
	}

	err = FUNC3(core_parent, links);
	if (err)
		FUNC4(links);
out:
	FUNC1(&core_parent->header);
	return err;
}