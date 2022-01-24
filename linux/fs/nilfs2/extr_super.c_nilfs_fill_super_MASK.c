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
struct the_nilfs {int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_cpfile; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_sem; } ;
struct super_block {int s_time_gran; int /*<<< orphan*/ * s_root; TYPE_1__* s_bdev; int /*<<< orphan*/  s_bdi; int /*<<< orphan*/  s_max_links; int /*<<< orphan*/ * s_export_op; int /*<<< orphan*/ * s_op; struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int dummy; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  bd_bdi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  NILFS_LINK_MAX ; 
 struct the_nilfs* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct the_nilfs*,struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct the_nilfs*,struct super_block*) ; 
 int FUNC7 (struct super_block*,scalar_t__,int,struct nilfs_root**) ; 
 int FUNC8 (struct super_block*,struct nilfs_root*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  nilfs_export_ops ; 
 int FUNC10 (struct super_block*,struct nilfs_root*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,int /*<<< orphan*/ ,char*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC13 (struct nilfs_root*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int) ; 
 int /*<<< orphan*/  nilfs_sops ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(struct super_block *sb, void *data, int silent)
{
	struct the_nilfs *nilfs;
	struct nilfs_root *fsroot;
	__u64 cno;
	int err;

	nilfs = FUNC0(sb);
	if (!nilfs)
		return -ENOMEM;

	sb->s_fs_info = nilfs;

	err = FUNC4(nilfs, sb, (char *)data);
	if (err)
		goto failed_nilfs;

	sb->s_op = &nilfs_sops;
	sb->s_export_op = &nilfs_export_ops;
	sb->s_root = NULL;
	sb->s_time_gran = 1;
	sb->s_max_links = NILFS_LINK_MAX;

	sb->s_bdi = FUNC1(sb->s_bdev->bd_bdi);

	err = FUNC6(nilfs, sb);
	if (err)
		goto failed_nilfs;

	cno = FUNC11(nilfs);
	err = FUNC7(sb, cno, true, &fsroot);
	if (err) {
		FUNC12(sb, KERN_ERR,
			  "error %d while loading last checkpoint (checkpoint number=%llu)",
			  err, (unsigned long long)cno);
		goto failed_unload;
	}

	if (!FUNC15(sb)) {
		err = FUNC8(sb, fsroot);
		if (err)
			goto failed_checkpoint;
	}

	err = FUNC10(sb, fsroot, &sb->s_root);
	if (err)
		goto failed_segctor;

	FUNC13(fsroot);

	if (!FUNC15(sb)) {
		FUNC3(&nilfs->ns_sem);
		FUNC14(sb, true);
		FUNC16(&nilfs->ns_sem);
	}

	return 0;

 failed_segctor:
	FUNC9(sb);

 failed_checkpoint:
	FUNC13(fsroot);

 failed_unload:
	FUNC5(nilfs->ns_sufile);
	FUNC5(nilfs->ns_cpfile);
	FUNC5(nilfs->ns_dat);

 failed_nilfs:
	FUNC2(nilfs);
	return err;
}