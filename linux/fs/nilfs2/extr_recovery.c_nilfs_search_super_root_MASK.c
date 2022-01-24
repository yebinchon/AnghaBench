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
typedef  void* u64 ;
struct the_nilfs {scalar_t__ ns_last_pseg; int ns_mount_state; int /*<<< orphan*/  ns_sb; void* ns_last_cno; void* ns_seg_seq; void* ns_last_seq; void* ns_nextnum; scalar_t__ ns_ctime; void* ns_cno; void* ns_segnum; scalar_t__ ns_pseg_offset; int /*<<< orphan*/  ns_blocksize; int /*<<< orphan*/  ns_bdev; } ;
struct nilfs_segment_summary {int /*<<< orphan*/  ss_create; int /*<<< orphan*/  ss_flags; int /*<<< orphan*/  ss_next; int /*<<< orphan*/  ss_nblocks; } ;
struct nilfs_recovery_info {void* ri_cno; int /*<<< orphan*/  ri_used_segments; int /*<<< orphan*/  ri_need_recovery; scalar_t__ ri_lsegs_end; scalar_t__ ri_lsegs_start; scalar_t__ ri_super_root; void* ri_lsegs_start_seq; void* ri_nextnum; void* ri_segnum; void* ri_seq; scalar_t__ ri_pseg_start; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  void* __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NILFS_RECOVERY_SR_UPDATED ; 
 int NILFS_SEG_FAIL_CONSISTENCY ; 
 int NILFS_SEG_FAIL_IO ; 
 unsigned int NILFS_SS_LOGBGN ; 
 unsigned int NILFS_SS_LOGEND ; 
 unsigned int NILFS_SS_SR ; 
 int NILFS_VALID_FS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct the_nilfs*,void*,scalar_t__*,scalar_t__*) ; 
 void* FUNC9 (struct the_nilfs*,scalar_t__) ; 
 struct buffer_head* FUNC10 (struct the_nilfs*,scalar_t__,struct nilfs_segment_summary**) ; 
 int FUNC11 (int /*<<< orphan*/ *,void*) ; 
 int FUNC12 (struct the_nilfs*,void*,struct buffer_head*,struct nilfs_segment_summary*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  segments ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct the_nilfs *nilfs,
			    struct nilfs_recovery_info *ri)
{
	struct buffer_head *bh_sum = NULL;
	struct nilfs_segment_summary *sum = NULL;
	sector_t pseg_start, pseg_end, sr_pseg_start = 0;
	sector_t seg_start, seg_end; /* range of full segment (block number) */
	sector_t b, end;
	unsigned long nblocks;
	unsigned int flags;
	u64 seg_seq;
	__u64 segnum, nextnum = 0;
	__u64 cno;
	FUNC0(segments);
	int empty_seg = 0, scan_newer = 0;
	int ret;

	pseg_start = nilfs->ns_last_pseg;
	seg_seq = nilfs->ns_last_seq;
	cno = nilfs->ns_last_cno;
	segnum = FUNC9(nilfs, pseg_start);

	/* Calculate range of segment */
	FUNC8(nilfs, segnum, &seg_start, &seg_end);

	/* Read ahead segment */
	b = seg_start;
	while (b <= seg_end)
		FUNC1(nilfs->ns_bdev, b++, nilfs->ns_blocksize);

	for (;;) {
		FUNC2(bh_sum);
		ret = NILFS_SEG_FAIL_IO;
		bh_sum = FUNC10(nilfs, pseg_start, &sum);
		if (!bh_sum)
			goto failed;

		ret = FUNC12(nilfs, seg_seq, bh_sum, sum);
		if (ret) {
			if (ret == NILFS_SEG_FAIL_IO)
				goto failed;
			goto strayed;
		}

		nblocks = FUNC4(sum->ss_nblocks);
		pseg_end = pseg_start + nblocks - 1;
		if (FUNC14(pseg_end > seg_end)) {
			ret = NILFS_SEG_FAIL_CONSISTENCY;
			goto strayed;
		}

		/* A valid partial segment */
		ri->ri_pseg_start = pseg_start;
		ri->ri_seq = seg_seq;
		ri->ri_segnum = segnum;
		nextnum = FUNC9(nilfs,
						    FUNC5(sum->ss_next));
		ri->ri_nextnum = nextnum;
		empty_seg = 0;

		flags = FUNC3(sum->ss_flags);
		if (!(flags & NILFS_SS_SR) && !scan_newer) {
			/*
			 * This will never happen because a superblock
			 * (last_segment) always points to a pseg with
			 * a super root.
			 */
			ret = NILFS_SEG_FAIL_CONSISTENCY;
			goto failed;
		}

		if (pseg_start == seg_start) {
			FUNC8(nilfs, nextnum, &b, &end);
			while (b <= end)
				FUNC1(nilfs->ns_bdev, b++,
					     nilfs->ns_blocksize);
		}
		if (!(flags & NILFS_SS_SR)) {
			if (!ri->ri_lsegs_start && (flags & NILFS_SS_LOGBGN)) {
				ri->ri_lsegs_start = pseg_start;
				ri->ri_lsegs_start_seq = seg_seq;
			}
			if (flags & NILFS_SS_LOGEND)
				ri->ri_lsegs_end = pseg_start;
			goto try_next_pseg;
		}

		/* A valid super root was found. */
		ri->ri_cno = cno++;
		ri->ri_super_root = pseg_end;
		ri->ri_lsegs_start = ri->ri_lsegs_end = 0;

		FUNC7(&segments);
		sr_pseg_start = pseg_start;
		nilfs->ns_pseg_offset = pseg_start + nblocks - seg_start;
		nilfs->ns_seg_seq = seg_seq;
		nilfs->ns_segnum = segnum;
		nilfs->ns_cno = cno;  /* nilfs->ns_cno = ri->ri_cno + 1 */
		nilfs->ns_ctime = FUNC5(sum->ss_create);
		nilfs->ns_nextnum = nextnum;

		if (scan_newer)
			ri->ri_need_recovery = NILFS_RECOVERY_SR_UPDATED;
		else {
			if (nilfs->ns_mount_state & NILFS_VALID_FS)
				goto super_root_found;
			scan_newer = 1;
		}

 try_next_pseg:
		/* Standing on a course, or met an inconsistent state */
		pseg_start += nblocks;
		if (pseg_start < seg_end)
			continue;
		goto feed_segment;

 strayed:
		/* Off the trail */
		if (!scan_newer)
			/*
			 * This can happen if a checkpoint was written without
			 * barriers, or as a result of an I/O failure.
			 */
			goto failed;

 feed_segment:
		/* Looking to the next full segment */
		if (empty_seg++)
			goto super_root_found; /* found a valid super root */

		ret = FUNC11(&segments, segnum);
		if (FUNC14(ret))
			goto failed;

		seg_seq++;
		segnum = nextnum;
		FUNC8(nilfs, segnum, &seg_start, &seg_end);
		pseg_start = seg_start;
	}

 super_root_found:
	/* Updating pointers relating to the latest checkpoint */
	FUNC2(bh_sum);
	FUNC6(&segments, &ri->ri_used_segments);
	nilfs->ns_last_pseg = sr_pseg_start;
	nilfs->ns_last_seq = nilfs->ns_seg_seq;
	nilfs->ns_last_cno = ri->ri_cno;
	return 0;

 failed:
	FUNC2(bh_sum);
	FUNC7(&segments);
	return ret < 0 ? ret : FUNC13(nilfs->ns_sb, ret);
}