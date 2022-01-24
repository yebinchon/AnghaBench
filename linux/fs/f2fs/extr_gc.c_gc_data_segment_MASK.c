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
struct super_block {int dummy; } ;
struct page {int /*<<< orphan*/  i_mode; } ;
struct node_info {int /*<<< orphan*/  ino; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct gc_inode_list {int dummy; } ;
struct f2fs_summary {int /*<<< orphan*/  ofs_in_node; int /*<<< orphan*/  nid; } ;
struct f2fs_sb_info {int blocks_per_seg; int /*<<< orphan*/  skipped_gc_rwsem; struct super_block* sb; } ;
struct f2fs_inode_info {int /*<<< orphan*/ * i_gc_rwsem; } ;
typedef  int /*<<< orphan*/  nid_t ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 int BG_GC ; 
 struct f2fs_inode_info* FUNC0 (struct page*) ; 
 int FG_GC ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  META_NAT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t READ ; 
 int /*<<< orphan*/  REQ_RAHEAD ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC5 (struct gc_inode_list*,struct page*) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct page* FUNC8 (struct page*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (unsigned int,struct page*) ; 
 struct page* FUNC15 (struct gc_inode_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct f2fs_sb_info*,struct f2fs_summary*,struct node_info*,scalar_t__,unsigned int*) ; 
 scalar_t__ FUNC20 (struct page*) ; 
 unsigned int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (struct page*,scalar_t__,int,unsigned int,int) ; 
 int FUNC24 (struct page*,scalar_t__,int,unsigned int,int) ; 
 int FUNC25 (struct page*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (struct f2fs_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct f2fs_sb_info *sbi, struct f2fs_summary *sum,
		struct gc_inode_list *gc_list, unsigned int segno, int gc_type)
{
	struct super_block *sb = sbi->sb;
	struct f2fs_summary *entry;
	block_t start_addr;
	int off;
	int phase = 0;
	int submitted = 0;

	start_addr = FUNC3(sbi, segno);

next_step:
	entry = sum;

	for (off = 0; off < sbi->blocks_per_seg; off++, entry++) {
		struct page *data_page;
		struct inode *inode;
		struct node_info dni; /* dnode info for the data */
		unsigned int ofs_in_node, nofs;
		block_t start_bidx;
		nid_t nid = FUNC22(entry->nid);

		/* stop BG_GC if there is not enough free sections. */
		if (gc_type == BG_GC && FUNC16(sbi, 0, 0))
			return submitted;

		if (FUNC6(sbi, segno, off) == 0)
			continue;

		if (phase == 0) {
			FUNC12(sbi, FUNC2(nid), 1,
							META_NAT, true);
			continue;
		}

		if (phase == 1) {
			FUNC13(sbi, nid);
			continue;
		}

		/* Get an inode by ino with checking validity */
		if (!FUNC19(sbi, entry, &dni, start_addr + off, &nofs))
			continue;

		if (phase == 2) {
			FUNC13(sbi, dni.ino);
			continue;
		}

		ofs_in_node = FUNC21(entry->ofs_in_node);

		if (phase == 3) {
			inode = FUNC9(sb, dni.ino);
			if (FUNC1(inode) || FUNC20(inode))
				continue;

			if (!FUNC7(
				&FUNC0(inode)->i_gc_rwsem[WRITE])) {
				FUNC18(inode);
				sbi->skipped_gc_rwsem++;
				continue;
			}

			start_bidx = FUNC14(nofs, inode) +
								ofs_in_node;

			if (FUNC10(inode)) {
				int err = FUNC25(inode, start_bidx);

				FUNC27(&FUNC0(inode)->i_gc_rwsem[WRITE]);
				if (err) {
					FUNC18(inode);
					continue;
				}
				FUNC5(gc_list, inode);
				continue;
			}

			data_page = FUNC8(inode,
						start_bidx, REQ_RAHEAD, true);
			FUNC27(&FUNC0(inode)->i_gc_rwsem[WRITE]);
			if (FUNC1(data_page)) {
				FUNC18(inode);
				continue;
			}

			FUNC11(data_page, 0);
			FUNC5(gc_list, inode);
			continue;
		}

		/* phase 4 */
		inode = FUNC15(gc_list, dni.ino);
		if (inode) {
			struct f2fs_inode_info *fi = FUNC0(inode);
			bool locked = false;
			int err;

			if (FUNC4(inode->i_mode)) {
				if (!FUNC7(&fi->i_gc_rwsem[READ]))
					continue;
				if (!FUNC7(
						&fi->i_gc_rwsem[WRITE])) {
					sbi->skipped_gc_rwsem++;
					FUNC27(&fi->i_gc_rwsem[READ]);
					continue;
				}
				locked = true;

				/* wait for all inflight aio data */
				FUNC17(inode);
			}

			start_bidx = FUNC14(nofs, inode)
								+ ofs_in_node;
			if (FUNC10(inode))
				err = FUNC23(inode, start_bidx,
							gc_type, segno, off);
			else
				err = FUNC24(inode, start_bidx, gc_type,
								segno, off);

			if (!err && (gc_type == FG_GC ||
					FUNC10(inode)))
				submitted++;

			if (locked) {
				FUNC27(&fi->i_gc_rwsem[WRITE]);
				FUNC27(&fi->i_gc_rwsem[READ]);
			}

			FUNC26(sbi, 1, gc_type);
		}
	}

	if (++phase < 5)
		goto next_step;

	return submitted;
}