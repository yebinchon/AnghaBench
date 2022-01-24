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
struct the_nilfs {scalar_t__ ns_blocksize_bits; int /*<<< orphan*/  ns_crc_seed; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_cno; } ;
struct TYPE_4__ {int flags; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_gc_inodes; int /*<<< orphan*/  sc_dirty_files; TYPE_2__ sc_stage; int /*<<< orphan*/  sc_segbufs; int /*<<< orphan*/  sc_curseg; int /*<<< orphan*/  sc_seg_ctime; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_root; int /*<<< orphan*/  sc_cno; TYPE_1__* sc_super; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int NILFS_CF_HISTORY_MASK ; 
 int NILFS_CF_IFILE_STARTED ; 
 int /*<<< orphan*/  NILFS_SC_DIRTY ; 
 scalar_t__ NILFS_ST_CPFILE ; 
 scalar_t__ NILFS_ST_DONE ; 
 int /*<<< orphan*/  NILFS_ST_INIT ; 
 scalar_t__ PAGE_SHIFT ; 
 int SC_LSEG_SR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_sc_info*,struct the_nilfs*,int) ; 
 int FUNC8 (struct nilfs_sc_info*,int) ; 
 int FUNC9 (struct nilfs_sc_info*,struct the_nilfs*) ; 
 scalar_t__ FUNC10 (struct nilfs_sc_info*) ; 
 int FUNC11 (struct nilfs_sc_info*,struct the_nilfs*,int) ; 
 int FUNC12 (struct nilfs_sc_info*,struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC13 (struct nilfs_sc_info*,struct the_nilfs*) ; 
 int FUNC14 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct nilfs_sc_info*,struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC17 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct nilfs_sc_info*) ; 
 int FUNC20 (struct nilfs_sc_info*,struct the_nilfs*) ; 
 scalar_t__ FUNC21 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct nilfs_sc_info *sci, int mode)
{
	struct the_nilfs *nilfs = sci->sc_super->s_fs_info;
	int err;

	FUNC5(sci, NILFS_ST_INIT);
	sci->sc_cno = nilfs->ns_cno;

	err = FUNC12(sci, nilfs);
	if (FUNC23(err))
		goto out;

	if (FUNC21(nilfs, sci->sc_root))
		FUNC22(NILFS_SC_DIRTY, &sci->sc_flags);

	if (FUNC10(sci))
		goto out;

	do {
		sci->sc_stage.flags &= ~NILFS_CF_HISTORY_MASK;

		err = FUNC9(sci, nilfs);
		if (FUNC23(err))
			goto out;

		/* Update time stamp */
		sci->sc_seg_ctime = FUNC0();

		err = FUNC11(sci, nilfs, mode);
		if (FUNC23(err))
			goto failed;

		/* Avoid empty segment */
		if (FUNC4(sci) == NILFS_ST_DONE &&
		    FUNC6(sci->sc_curseg)) {
			FUNC7(sci, nilfs, 1);
			goto out;
		}

		err = FUNC8(sci, mode);
		if (FUNC23(err))
			goto failed;

		if (sci->sc_stage.flags & NILFS_CF_IFILE_STARTED)
			FUNC15(sci);

		if (mode == SC_LSEG_SR &&
		    FUNC4(sci) >= NILFS_ST_CPFILE) {
			err = FUNC14(sci);
			if (FUNC23(err))
				goto failed_to_write;

			FUNC16(sci, nilfs);
		}
		FUNC18(sci, nilfs->ns_sufile);

		/* Write partial segments */
		FUNC17(sci);

		FUNC1(&sci->sc_segbufs,
					    nilfs->ns_crc_seed);

		err = FUNC20(sci, nilfs);
		if (FUNC23(err))
			goto failed_to_write;

		if (FUNC4(sci) == NILFS_ST_DONE ||
		    nilfs->ns_blocksize_bits != PAGE_SHIFT) {
			/*
			 * At this point, we avoid double buffering
			 * for blocksize < pagesize because page dirty
			 * flag is turned off during write and dirty
			 * buffers are not properly collected for
			 * pages crossing over segments.
			 */
			err = FUNC19(sci);
			if (err)
				goto failed_to_write;
		}
	} while (FUNC4(sci) != NILFS_ST_DONE);

 out:
	FUNC13(sci, nilfs);
	return err;

 failed_to_write:
	if (sci->sc_stage.flags & NILFS_CF_IFILE_STARTED)
		FUNC3(&sci->sc_dirty_files);

 failed:
	if (FUNC2())
		FUNC3(&sci->sc_gc_inodes);
	FUNC7(sci, nilfs, err);
	goto out;
}