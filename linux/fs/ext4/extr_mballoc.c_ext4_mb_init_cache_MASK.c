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
struct super_block {int s_blocksize_bits; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_group_info {char* bb_counters; scalar_t__ bb_fragments; } ;
struct buffer_head {char* b_data; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  size_t ext4_group_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_group_info*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int PAGE_SIZE ; 
 int FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct ext4_group_info* FUNC8 (struct super_block*,size_t) ; 
 size_t FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,char*,size_t) ; 
 struct buffer_head* FUNC14 (struct super_block*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,size_t) ; 
 int FUNC16 (struct super_block*,size_t,struct buffer_head*) ; 
 int FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head**) ; 
 struct buffer_head** FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,int) ; 
 char* FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct super_block*,size_t) ; 
 int /*<<< orphan*/  FUNC25 (struct super_block*,size_t) ; 

__attribute__((used)) static int FUNC26(struct page *page, char *incore, gfp_t gfp)
{
	ext4_group_t ngroups;
	int blocksize;
	int blocks_per_page;
	int groups_per_page;
	int err = 0;
	int i;
	ext4_group_t first_group, group;
	int first_block;
	struct super_block *sb;
	struct buffer_head *bhs;
	struct buffer_head **bh = NULL;
	struct inode *inode;
	char *data;
	char *bitmap;
	struct ext4_group_info *grinfo;

	FUNC20(1, "init page %lu\n", page->index);

	inode = page->mapping->host;
	sb = inode->i_sb;
	ngroups = FUNC9(sb);
	blocksize = FUNC17(inode);
	blocks_per_page = PAGE_SIZE / blocksize;

	groups_per_page = blocks_per_page >> 1;
	if (groups_per_page == 0)
		groups_per_page = 1;

	/* allocate buffer_heads to read bitmaps */
	if (groups_per_page > 1) {
		i = sizeof(struct buffer_head *) * groups_per_page;
		bh = FUNC19(i, gfp);
		if (bh == NULL) {
			err = -ENOMEM;
			goto out;
		}
	} else
		bh = &bhs;

	first_group = page->index * blocks_per_page / 2;

	/* read all groups the page covers into the cache */
	for (i = 0, group = first_group; i < groups_per_page; i++, group++) {
		if (group >= ngroups)
			break;

		grinfo = FUNC8(sb, group);
		/*
		 * If page is uptodate then we came here after online resize
		 * which added some new uninitialized group info structs, so
		 * we must skip all initialized uptodate buddies on the page,
		 * which may be currently in use by an allocating task.
		 */
		if (FUNC4(page) && !FUNC1(grinfo)) {
			bh[i] = NULL;
			continue;
		}
		bh[i] = FUNC14(sb, group);
		if (FUNC2(bh[i])) {
			err = FUNC3(bh[i]);
			bh[i] = NULL;
			goto out;
		}
		FUNC20(1, "read bitmap for group %u\n", group);
	}

	/* wait for I/O completion */
	for (i = 0, group = first_group; i < groups_per_page; i++, group++) {
		int err2;

		if (!bh[i])
			continue;
		err2 = FUNC16(sb, group, bh[i]);
		if (!err)
			err = err2;
	}

	first_block = page->index * blocks_per_page;
	for (i = 0; i < blocks_per_page; i++) {
		group = (first_block + i) >> 1;
		if (group >= ngroups)
			break;

		if (!bh[group - first_group])
			/* skip initialized uptodate buddy */
			continue;

		if (!FUNC7(bh[group - first_group]))
			/* Skip faulty bitmaps */
			continue;
		err = 0;

		/*
		 * data carry information regarding this
		 * particular group in the format specified
		 * above
		 *
		 */
		data = FUNC23(page) + (i * blocksize);
		bitmap = bh[group - first_group]->b_data;

		/*
		 * We place the buddy block and bitmap block
		 * close together
		 */
		if ((first_block + i) & 1) {
			/* this is block of buddy */
			FUNC0(incore == NULL);
			FUNC20(1, "put buddy for group %u in page %lu/%x\n",
				group, page->index, i * blocksize);
			FUNC25(sb, group);
			grinfo = FUNC8(sb, group);
			grinfo->bb_fragments = 0;
			FUNC22(grinfo->bb_counters, 0,
			       sizeof(*grinfo->bb_counters) *
				(sb->s_blocksize_bits+2));
			/*
			 * incore got set to the group block bitmap below
			 */
			FUNC10(sb, group);
			/* init the buddy */
			FUNC22(data, 0xff, blocksize);
			FUNC11(sb, data, incore, group);
			FUNC15(sb, group);
			incore = NULL;
		} else {
			/* this is block of bitmap */
			FUNC0(incore != NULL);
			FUNC20(1, "put bitmap for group %u in page %lu/%x\n",
				group, page->index, i * blocksize);
			FUNC24(sb, group);

			/* see comments in ext4_mb_put_pa() */
			FUNC10(sb, group);
			FUNC21(data, bitmap, blocksize);

			/* mark all preallocated blks used in in-core bitmap */
			FUNC13(sb, data, group);
			FUNC12(sb, data, group);
			FUNC15(sb, group);

			/* set incore so that the buddy information can be
			 * generated using this
			 */
			incore = data;
		}
	}
	FUNC5(page);

out:
	if (bh) {
		for (i = 0; i < groups_per_page; i++)
			FUNC6(bh[i]);
		if (bh != &bhs)
			FUNC18(bh);
	}
	return err;
}