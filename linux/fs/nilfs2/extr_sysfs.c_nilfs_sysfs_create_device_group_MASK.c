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
struct TYPE_3__ {int /*<<< orphan*/  kset; } ;
struct the_nilfs {int /*<<< orphan*/  ns_dev_subgroups; TYPE_1__ ns_dev_kobj; int /*<<< orphan*/  ns_dev_kobj_unregister; } ;
struct super_block {int /*<<< orphan*/  s_id; struct the_nilfs* s_fs_info; } ;
struct nilfs_sysfs_dev_subgroups {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nilfs_dev_ktype ; 
 int /*<<< orphan*/  nilfs_kset ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct the_nilfs*) ; 
 int FUNC7 (struct the_nilfs*) ; 
 int FUNC8 (struct the_nilfs*) ; 
 int FUNC9 (struct the_nilfs*) ; 
 int FUNC10 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC11 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC12 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC13 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC14 (struct the_nilfs*) ; 
 scalar_t__ FUNC15 (int) ; 

int FUNC16(struct super_block *sb)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	size_t devgrp_size = sizeof(struct nilfs_sysfs_dev_subgroups);
	int err;

	nilfs->ns_dev_subgroups = FUNC4(devgrp_size, GFP_KERNEL);
	if (FUNC15(!nilfs->ns_dev_subgroups)) {
		err = -ENOMEM;
		FUNC5(sb, KERN_ERR,
			  "unable to allocate memory for device group");
		goto failed_create_device_group;
	}

	nilfs->ns_dev_kobj.kset = nilfs_kset;
	FUNC0(&nilfs->ns_dev_kobj_unregister);
	err = FUNC3(&nilfs->ns_dev_kobj, &nilfs_dev_ktype, NULL,
				    "%s", sb->s_id);
	if (err)
		goto free_dev_subgroups;

	err = FUNC7(nilfs);
	if (err)
		goto cleanup_dev_kobject;

	err = FUNC6(nilfs);
	if (err)
		goto delete_mounted_snapshots_group;

	err = FUNC9(nilfs);
	if (err)
		goto delete_checkpoints_group;

	err = FUNC10(nilfs);
	if (err)
		goto delete_segments_group;

	err = FUNC8(nilfs);
	if (err)
		goto delete_superblock_group;

	return 0;

delete_superblock_group:
	FUNC14(nilfs);

delete_segments_group:
	FUNC13(nilfs);

delete_checkpoints_group:
	FUNC11(nilfs);

delete_mounted_snapshots_group:
	FUNC12(nilfs);

cleanup_dev_kobject:
	FUNC2(&nilfs->ns_dev_kobj);

free_dev_subgroups:
	FUNC1(nilfs->ns_dev_subgroups);

failed_create_device_group:
	return err;
}