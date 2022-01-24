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
typedef  scalar_t__ u32 ;
struct the_nilfs {int /*<<< orphan*/  ns_blocksize; int /*<<< orphan*/  ns_bdev; } ;
struct nilfs_segment_summary {int /*<<< orphan*/  ss_bytes; int /*<<< orphan*/  ss_sumbytes; int /*<<< orphan*/  ss_nfinfo; } ;
struct nilfs_recovery_block {int /*<<< orphan*/  list; void* blkoff; void* vblocknr; scalar_t__ blocknr; void* ino; } ;
struct nilfs_finfo {int /*<<< orphan*/  fi_ndatablk; int /*<<< orphan*/  fi_nblocks; int /*<<< orphan*/  fi_ino; } ;
struct nilfs_binfo_v {int /*<<< orphan*/  bi_blkoff; int /*<<< orphan*/  bi_vblocknr; } ;
struct list_head {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  void* ino_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct nilfs_recovery_block* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct list_head*) ; 
 void* FUNC8 (struct the_nilfs*,struct buffer_head**,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct the_nilfs*,struct buffer_head**,unsigned int*,int,unsigned long) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct the_nilfs *nilfs, sector_t start_blocknr,
				struct nilfs_segment_summary *sum,
				struct list_head *head)
{
	struct buffer_head *bh;
	unsigned int offset;
	u32 nfinfo, sumbytes;
	sector_t blocknr;
	ino_t ino;
	int err = -EIO;

	nfinfo = FUNC5(sum->ss_nfinfo);
	if (!nfinfo)
		return 0;

	sumbytes = FUNC5(sum->ss_sumbytes);
	blocknr = start_blocknr + FUNC0(sumbytes, nilfs->ns_blocksize);
	bh = FUNC1(nilfs->ns_bdev, start_blocknr, nilfs->ns_blocksize);
	if (FUNC10(!bh))
		goto out;

	offset = FUNC4(sum->ss_bytes);
	for (;;) {
		unsigned long nblocks, ndatablk, nnodeblk;
		struct nilfs_finfo *finfo;

		finfo = FUNC8(nilfs, &bh, &offset,
						sizeof(*finfo));
		if (FUNC10(!finfo))
			goto out;

		ino = FUNC6(finfo->fi_ino);
		nblocks = FUNC5(finfo->fi_nblocks);
		ndatablk = FUNC5(finfo->fi_ndatablk);
		nnodeblk = nblocks - ndatablk;

		while (ndatablk-- > 0) {
			struct nilfs_recovery_block *rb;
			struct nilfs_binfo_v *binfo;

			binfo = FUNC8(nilfs, &bh, &offset,
							sizeof(*binfo));
			if (FUNC10(!binfo))
				goto out;

			rb = FUNC3(sizeof(*rb), GFP_NOFS);
			if (FUNC10(!rb)) {
				err = -ENOMEM;
				goto out;
			}
			rb->ino = ino;
			rb->blocknr = blocknr++;
			rb->vblocknr = FUNC6(binfo->bi_vblocknr);
			rb->blkoff = FUNC6(binfo->bi_blkoff);
			/* INIT_LIST_HEAD(&rb->list); */
			FUNC7(&rb->list, head);
		}
		if (--nfinfo == 0)
			break;
		blocknr += nnodeblk; /* always 0 for data sync logs */
		FUNC9(nilfs, &bh, &offset, sizeof(__le64),
					nnodeblk);
		if (FUNC10(!bh))
			goto out;
	}
	err = 0;
 out:
	FUNC2(bh);   /* brelse(NULL) is just ignored */
	return err;
}