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
struct nilfs_sufile_info {int allocmax; int allocmin; int /*<<< orphan*/  ncleansegs; } ;
struct nilfs_sufile_header {int /*<<< orphan*/  sh_last_alloc; int /*<<< orphan*/  sh_ndirtysegs; int /*<<< orphan*/  sh_ncleansegs; } ;
struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int __u64 ;
struct TYPE_2__ {size_t mi_entry_size; int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct nilfs_sufile_info* FUNC1 (struct inode*) ; 
 int FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct nilfs_segment_usage*) ; 
 int /*<<< orphan*/  FUNC13 (struct nilfs_segment_usage*) ; 
 struct nilfs_segment_usage* FUNC14 (struct inode*,int,struct buffer_head*,void*) ; 
 int FUNC15 (struct inode*,struct buffer_head**) ; 
 unsigned long FUNC16 (struct inode*) ; 
 int FUNC17 (struct inode*,int,int,struct buffer_head**) ; 
 unsigned long FUNC18 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct inode *sufile, __u64 *segnump)
{
	struct buffer_head *header_bh, *su_bh;
	struct nilfs_sufile_header *header;
	struct nilfs_segment_usage *su;
	struct nilfs_sufile_info *sui = FUNC1(sufile);
	size_t susz = FUNC0(sufile)->mi_entry_size;
	__u64 segnum, maxsegnum, last_alloc;
	void *kaddr;
	unsigned long nsegments, nsus, cnt;
	int ret, j;

	FUNC5(&FUNC0(sufile)->mi_sem);

	ret = FUNC15(sufile, &header_bh);
	if (ret < 0)
		goto out_sem;
	kaddr = FUNC6(header_bh->b_page);
	header = kaddr + FUNC2(header_bh);
	last_alloc = FUNC9(header->sh_last_alloc);
	FUNC7(kaddr);

	nsegments = FUNC16(sufile);
	maxsegnum = sui->allocmax;
	segnum = last_alloc + 1;
	if (segnum < sui->allocmin || segnum > sui->allocmax)
		segnum = sui->allocmin;

	for (cnt = 0; cnt < nsegments; cnt += nsus) {
		if (segnum > maxsegnum) {
			if (cnt < sui->allocmax - sui->allocmin + 1) {
				/*
				 * wrap around in the limited region.
				 * if allocation started from
				 * sui->allocmin, this never happens.
				 */
				segnum = sui->allocmin;
				maxsegnum = last_alloc;
			} else if (segnum > sui->allocmin &&
				   sui->allocmax + 1 < nsegments) {
				segnum = sui->allocmax + 1;
				maxsegnum = nsegments - 1;
			} else if (sui->allocmin > 0)  {
				segnum = 0;
				maxsegnum = sui->allocmin - 1;
			} else {
				break; /* never happens */
			}
		}
		FUNC20(sufile, segnum, cnt);
		ret = FUNC17(sufile, segnum, 1,
							   &su_bh);
		if (ret < 0)
			goto out_header;
		kaddr = FUNC6(su_bh->b_page);
		su = FUNC14(
			sufile, segnum, su_bh, kaddr);

		nsus = FUNC18(
			sufile, segnum, maxsegnum);
		for (j = 0; j < nsus; j++, su = (void *)su + susz, segnum++) {
			if (!FUNC12(su))
				continue;
			/* found a clean segment */
			FUNC13(su);
			FUNC7(kaddr);

			kaddr = FUNC6(header_bh->b_page);
			header = kaddr + FUNC2(header_bh);
			FUNC8(&header->sh_ncleansegs, -1);
			FUNC8(&header->sh_ndirtysegs, 1);
			header->sh_last_alloc = FUNC4(segnum);
			FUNC7(kaddr);

			sui->ncleansegs--;
			FUNC10(header_bh);
			FUNC10(su_bh);
			FUNC11(sufile);
			FUNC3(su_bh);
			*segnump = segnum;

			FUNC19(sufile, segnum);

			goto out_header;
		}

		FUNC7(kaddr);
		FUNC3(su_bh);
	}

	/* no segments left */
	ret = -ENOSPC;

 out_header:
	FUNC3(header_bh);

 out_sem:
	FUNC21(&FUNC0(sufile)->mi_sem);
	return ret;
}