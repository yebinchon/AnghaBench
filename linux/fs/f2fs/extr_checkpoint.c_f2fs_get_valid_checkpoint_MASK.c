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
struct page {int dummy; } ;
struct f2fs_super_block {int /*<<< orphan*/  log_blocks_per_seg; int /*<<< orphan*/  cp_blkaddr; } ;
struct f2fs_sb_info {unsigned long blocksize; unsigned char* ckpt; int cur_cp_pack; struct f2fs_super_block* raw_super; } ;
typedef  void f2fs_checkpoint ;
typedef  int block_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned int) ; 
 struct page* FUNC4 (struct f2fs_sb_info*,int) ; 
 unsigned char* FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 scalar_t__ FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,void*,unsigned long) ; 
 void* FUNC11 (struct page*) ; 
 struct page* FUNC12 (struct f2fs_sb_info*,unsigned long long,unsigned long long*) ; 
 scalar_t__ FUNC13 (unsigned long long,unsigned long long) ; 

int FUNC14(struct f2fs_sb_info *sbi)
{
	struct f2fs_checkpoint *cp_block;
	struct f2fs_super_block *fsb = sbi->raw_super;
	struct page *cp1, *cp2, *cur_page;
	unsigned long blk_size = sbi->blocksize;
	unsigned long long cp1_version = 0, cp2_version = 0;
	unsigned long long cp_start_blk_no;
	unsigned int cp_blks = 1 + FUNC2(sbi);
	block_t cp_blk_no;
	int i;
	int err;

	sbi->ckpt = FUNC5(sbi, FUNC3(blk_size, cp_blks),
				 GFP_KERNEL);
	if (!sbi->ckpt)
		return -ENOMEM;
	/*
	 * Finding out valid cp block involves read both
	 * sets( cp pack1 and cp pack 2)
	 */
	cp_start_blk_no = FUNC9(fsb->cp_blkaddr);
	cp1 = FUNC12(sbi, cp_start_blk_no, &cp1_version);

	/* The second checkpoint pack should start at the next segment */
	cp_start_blk_no += ((unsigned long long)1) <<
				FUNC9(fsb->log_blocks_per_seg);
	cp2 = FUNC12(sbi, cp_start_blk_no, &cp2_version);

	if (cp1 && cp2) {
		if (FUNC13(cp2_version, cp1_version))
			cur_page = cp2;
		else
			cur_page = cp1;
	} else if (cp1) {
		cur_page = cp1;
	} else if (cp2) {
		cur_page = cp2;
	} else {
		err = -EFSCORRUPTED;
		goto fail_no_cp;
	}

	cp_block = (struct f2fs_checkpoint *)FUNC11(cur_page);
	FUNC10(sbi->ckpt, cp_block, blk_size);

	if (cur_page == cp1)
		sbi->cur_cp_pack = 1;
	else
		sbi->cur_cp_pack = 2;

	/* Sanity checking of checkpoint */
	if (FUNC7(sbi)) {
		err = -EFSCORRUPTED;
		goto free_fail_no_cp;
	}

	if (cp_blks <= 1)
		goto done;

	cp_blk_no = FUNC9(fsb->cp_blkaddr);
	if (cur_page == cp2)
		cp_blk_no += 1 << FUNC9(fsb->log_blocks_per_seg);

	for (i = 1; i < cp_blks; i++) {
		void *sit_bitmap_ptr;
		unsigned char *ckpt = (unsigned char *)sbi->ckpt;

		cur_page = FUNC4(sbi, cp_blk_no + i);
		if (FUNC0(cur_page)) {
			err = FUNC1(cur_page);
			goto free_fail_no_cp;
		}
		sit_bitmap_ptr = FUNC11(cur_page);
		FUNC10(ckpt + i * blk_size, sit_bitmap_ptr, blk_size);
		FUNC6(cur_page, 1);
	}
done:
	FUNC6(cp1, 1);
	FUNC6(cp2, 1);
	return 0;

free_fail_no_cp:
	FUNC6(cp1, 1);
	FUNC6(cp2, 1);
fail_no_cp:
	FUNC8(sbi->ckpt);
	return err;
}