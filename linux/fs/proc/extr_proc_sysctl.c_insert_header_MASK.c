#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ctl_table_header {struct ctl_dir* parent; struct ctl_table* ctl_table; } ;
struct ctl_table {scalar_t__ procname; } ;
struct TYPE_3__ {int /*<<< orphan*/  nreg; } ;
struct ctl_dir {TYPE_1__ header; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_dir*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_table_header*) ; 
 int FUNC4 (struct ctl_table_header*,struct ctl_table*) ; 
 int FUNC5 (struct ctl_table_header*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC8 (struct ctl_dir*) ; 
 struct ctl_table* sysctl_mount_point ; 

__attribute__((used)) static int FUNC9(struct ctl_dir *dir, struct ctl_table_header *header)
{
	struct ctl_table *entry;
	int err;

	/* Is this a permanently empty directory? */
	if (FUNC6(&dir->header))
		return -EROFS;

	/* Am I creating a permanently empty directory? */
	if (header->ctl_table == sysctl_mount_point) {
		if (!FUNC0(&dir->root))
			return -EINVAL;
		FUNC8(dir);
	}

	dir->header.nreg++;
	header->parent = dir;
	err = FUNC5(header);
	if (err)
		goto fail_links;
	for (entry = header->ctl_table; entry->procname; entry++) {
		err = FUNC4(header, entry);
		if (err)
			goto fail;
	}
	return 0;
fail:
	FUNC3(header);
	FUNC7(header);
fail_links:
	if (header->ctl_table == sysctl_mount_point)
		FUNC1(dir);
	header->parent = NULL;
	FUNC2(&dir->header);
	return err;
}