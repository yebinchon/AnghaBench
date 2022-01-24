#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct TYPE_9__ {TYPE_1__* l_recs; } ;
struct TYPE_10__ {TYPE_2__ i_list; } ;
struct ocfs2_dinode {TYPE_3__ id2; int /*<<< orphan*/  i_clusters; } ;
struct inode {TYPE_4__* i_sb; } ;
struct buffer_head {int b_size; scalar_t__ b_data; int /*<<< orphan*/  b_page; } ;
typedef  int sector_t ;
struct TYPE_12__ {scalar_t__ ip_blkno; } ;
struct TYPE_11__ {int s_blocksize_bits; } ;
struct TYPE_8__ {int /*<<< orphan*/  e_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_7__* FUNC1 (struct inode*) ; 
 struct ocfs2_super* FUNC2 (TYPE_4__*) ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 int FUNC17 (struct inode*,struct buffer_head**) ; 
 struct buffer_head* FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (unsigned long long,unsigned long long,struct buffer_head*,int) ; 

__attribute__((used)) static int FUNC21(struct inode *inode, sector_t iblock,
				   struct buffer_head *bh_result, int create)
{
	int err = -EIO;
	int status;
	struct ocfs2_dinode *fe = NULL;
	struct buffer_head *bh = NULL;
	struct buffer_head *buffer_cache_bh = NULL;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	void *kaddr;

	FUNC20(
			(unsigned long long)FUNC1(inode)->ip_blkno,
			(unsigned long long)iblock, bh_result, create);

	FUNC0(FUNC15(inode));

	if ((iblock << inode->i_sb->s_blocksize_bits) > PATH_MAX + 1) {
		FUNC12(ML_ERROR, "block offset > PATH_MAX: %llu",
		     (unsigned long long)iblock);
		goto bail;
	}

	status = FUNC17(inode, &bh);
	if (status < 0) {
		FUNC13(status);
		goto bail;
	}
	fe = (struct ocfs2_dinode *) bh->b_data;

	if ((u64)iblock >= FUNC14(inode->i_sb,
						    FUNC8(fe->i_clusters))) {
		err = -ENOMEM;
		FUNC12(ML_ERROR, "block offset is outside the allocated size: "
		     "%llu\n", (unsigned long long)iblock);
		goto bail;
	}

	/* We don't use the page cache to create symlink data, so if
	 * need be, copy it over from the buffer cache. */
	if (!FUNC5(bh_result) && FUNC16(inode)) {
		u64 blkno = FUNC9(fe->id2.i_list.l_recs[0].e_blkno) +
			    iblock;
		buffer_cache_bh = FUNC18(osb->sb, blkno);
		if (!buffer_cache_bh) {
			err = -ENOMEM;
			FUNC12(ML_ERROR, "couldn't getblock for symlink!\n");
			goto bail;
		}

		/* we haven't locked out transactions, so a commit
		 * could've happened. Since we've got a reference on
		 * the bh, even if it commits while we're doing the
		 * copy, the data is still good. */
		if (FUNC4(buffer_cache_bh)
		    && FUNC16(inode)) {
			kaddr = FUNC6(bh_result->b_page);
			if (!kaddr) {
				FUNC12(ML_ERROR, "couldn't kmap!\n");
				goto bail;
			}
			FUNC11(kaddr + (bh_result->b_size * iblock),
			       buffer_cache_bh->b_data,
			       bh_result->b_size);
			FUNC7(kaddr);
			FUNC19(bh_result);
		}
		FUNC3(buffer_cache_bh);
	}

	FUNC10(bh_result, inode->i_sb,
	       FUNC9(fe->id2.i_list.l_recs[0].e_blkno) + iblock);

	err = 0;

bail:
	FUNC3(bh);

	return err;
}