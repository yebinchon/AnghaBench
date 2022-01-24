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
struct the_nilfs {int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_gc_inodes; struct nilfs_sc_info* ns_writer; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_sc_info {scalar_t__ sc_nfreesegs; int /*<<< orphan*/ * sc_freesegs; int /*<<< orphan*/  sc_interval; int /*<<< orphan*/  sc_gc_inodes; } ;
struct nilfs_argv {scalar_t__ v_nmembs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCARD ; 
 int EROFS ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  SC_LSEG_SR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct the_nilfs*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (struct the_nilfs*,struct nilfs_argv*,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct the_nilfs*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,struct nilfs_transaction_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

int FUNC17(struct super_block *sb, struct nilfs_argv *argv,
			 void **kbufs)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_sc_info *sci = nilfs->ns_writer;
	struct nilfs_transaction_info ti;
	int err;

	if (FUNC16(!sci))
		return -EROFS;

	FUNC12(sb, &ti, 1);

	err = FUNC7(nilfs->ns_dat);
	if (FUNC16(err))
		goto out_unlock;

	err = FUNC4(nilfs, argv, kbufs);
	if (FUNC16(err)) {
		FUNC6(nilfs->ns_dat);
		goto out_unlock;
	}

	sci->sc_freesegs = kbufs[4];
	sci->sc_nfreesegs = argv[4].v_nmembs;
	FUNC1(&nilfs->ns_gc_inodes, &sci->sc_gc_inodes);

	for (;;) {
		err = FUNC10(sci, SC_LSEG_SR);
		FUNC9(nilfs, &sci->sc_gc_inodes);

		if (FUNC0(!err))
			break;

		FUNC8(sb, KERN_WARNING, "error %d cleaning segments", err);
		FUNC15(TASK_INTERRUPTIBLE);
		FUNC14(sci->sc_interval);
	}
	if (FUNC11(nilfs, DISCARD)) {
		int ret = FUNC3(nilfs, sci->sc_freesegs,
						 sci->sc_nfreesegs);
		if (ret) {
			FUNC8(sb, KERN_WARNING,
				  "error %d on discard request, turning discards off for the device",
				  ret);
			FUNC2(nilfs, DISCARD);
		}
	}

 out_unlock:
	sci->sc_freesegs = NULL;
	sci->sc_nfreesegs = 0;
	FUNC5(nilfs->ns_dat);
	FUNC13(sb);
	return err;
}