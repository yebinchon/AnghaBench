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
struct the_nilfs {int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_nextnum; int /*<<< orphan*/  ns_segnum; int /*<<< orphan*/  ns_seg_seq; int /*<<< orphan*/  ns_pseg_offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  seg_seq; } ;
struct nilfs_segment_buffer {scalar_t__ sb_rest_blocks; int /*<<< orphan*/  sb_list; int /*<<< orphan*/  sb_segnum; TYPE_1__ sb_sum; int /*<<< orphan*/  sb_nextnum; } ;
struct nilfs_sc_info {scalar_t__ sc_segbuf_nblocks; int /*<<< orphan*/  sc_segbufs; int /*<<< orphan*/  sc_write_logs; int /*<<< orphan*/  sc_super; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct nilfs_segment_buffer* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NILFS_PSEG_MIN_BLOCKS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_segment_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_segment_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_segment_buffer*,struct nilfs_segment_buffer*) ; 
 struct nilfs_segment_buffer* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_segment_buffer*,int /*<<< orphan*/ ,struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC9 (struct the_nilfs*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct nilfs_sc_info *sci,
					    struct the_nilfs *nilfs)
{
	struct nilfs_segment_buffer *segbuf, *prev;
	__u64 nextnum;
	int err, alloc = 0;

	segbuf = FUNC7(sci->sc_super);
	if (FUNC12(!segbuf))
		return -ENOMEM;

	if (FUNC3(&sci->sc_write_logs)) {
		FUNC5(segbuf, nilfs->ns_segnum,
				 nilfs->ns_pseg_offset, nilfs);
		if (segbuf->sb_rest_blocks < NILFS_PSEG_MIN_BLOCKS) {
			FUNC9(nilfs);
			FUNC5(segbuf, nilfs->ns_segnum, 0, nilfs);
		}

		segbuf->sb_sum.seg_seq = nilfs->ns_seg_seq;
		nextnum = nilfs->ns_nextnum;

		if (nilfs->ns_segnum == nilfs->ns_nextnum)
			/* Start from the head of a new full segment */
			alloc++;
	} else {
		/* Continue logs */
		prev = FUNC1(&sci->sc_write_logs);
		FUNC6(segbuf, prev);
		segbuf->sb_sum.seg_seq = prev->sb_sum.seg_seq;
		nextnum = prev->sb_nextnum;

		if (segbuf->sb_rest_blocks < NILFS_PSEG_MIN_BLOCKS) {
			FUNC5(segbuf, prev->sb_nextnum, 0, nilfs);
			segbuf->sb_sum.seg_seq++;
			alloc++;
		}
	}

	err = FUNC11(nilfs->ns_sufile, segbuf->sb_segnum);
	if (err)
		goto failed;

	if (alloc) {
		err = FUNC10(nilfs->ns_sufile, &nextnum);
		if (err)
			goto failed;
	}
	FUNC8(segbuf, nextnum, nilfs);

	FUNC0(!FUNC3(&sci->sc_segbufs));
	FUNC2(&segbuf->sb_list, &sci->sc_segbufs);
	sci->sc_segbuf_nblocks = segbuf->sb_rest_blocks;
	return 0;

 failed:
	FUNC4(segbuf);
	return err;
}