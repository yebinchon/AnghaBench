#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int inode_page_locked; int ofs_in_node; int cur_level; int max_level; struct page* node_page; struct page* inode_page; TYPE_1__* inode; int /*<<< orphan*/  data_blkaddr; void* nid; } ;
typedef  scalar_t__ pgoff_t ;
typedef  void* nid_t ;
struct TYPE_5__ {void* i_ino; } ;

/* Variables and functions */
 int ALLOC_NODE ; 
 int ENOENT ; 
 int ENOSPC ; 
 struct f2fs_sb_info* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int LOOKUP_NODE_RA ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,void*) ; 
 struct page* FUNC7 (struct f2fs_sb_info*,void*) ; 
 struct page* FUNC8 (struct page*,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 struct page* FUNC10 (struct dnode_of_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int) ; 
 void* FUNC12 (struct page*,int,int) ; 
 int FUNC13 (TYPE_1__*,scalar_t__,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

int FUNC16(struct dnode_of_data *dn, pgoff_t index, int mode)
{
	struct f2fs_sb_info *sbi = FUNC0(dn->inode);
	struct page *npage[4];
	struct page *parent = NULL;
	int offset[4];
	unsigned int noffset[4];
	nid_t nids[4];
	int level, i = 0;
	int err = 0;

	level = FUNC13(dn->inode, index, offset, noffset);
	if (level < 0)
		return level;

	nids[0] = dn->inode->i_ino;
	npage[0] = dn->inode_page;

	if (!npage[0]) {
		npage[0] = FUNC7(sbi, nids[0]);
		if (FUNC1(npage[0]))
			return FUNC2(npage[0]);
	}

	/* if inline_data is set, should not report any block indices */
	if (FUNC9(dn->inode) && index) {
		err = -ENOENT;
		FUNC11(npage[0], 1);
		goto release_out;
	}

	parent = npage[0];
	if (level != 0)
		nids[1] = FUNC12(parent, offset[0], true);
	dn->inode_page = npage[0];
	dn->inode_page_locked = true;

	/* get indirect or direct nodes */
	for (i = 1; i <= level; i++) {
		bool done = false;

		if (!nids[i] && mode == ALLOC_NODE) {
			/* alloc new node */
			if (!FUNC4(sbi, &(nids[i]))) {
				err = -ENOSPC;
				goto release_pages;
			}

			dn->nid = nids[i];
			npage[i] = FUNC10(dn, noffset[i]);
			if (FUNC1(npage[i])) {
				FUNC6(sbi, nids[i]);
				err = FUNC2(npage[i]);
				goto release_pages;
			}

			FUNC14(parent, offset[i - 1], nids[i], i == 1);
			FUNC5(sbi, nids[i]);
			done = true;
		} else if (mode == LOOKUP_NODE_RA && i == level && level > 1) {
			npage[i] = FUNC8(parent, offset[i - 1]);
			if (FUNC1(npage[i])) {
				err = FUNC2(npage[i]);
				goto release_pages;
			}
			done = true;
		}
		if (i == 1) {
			dn->inode_page_locked = false;
			FUNC15(parent);
		} else {
			FUNC11(parent, 1);
		}

		if (!done) {
			npage[i] = FUNC7(sbi, nids[i]);
			if (FUNC1(npage[i])) {
				err = FUNC2(npage[i]);
				FUNC11(npage[0], 0);
				goto release_out;
			}
		}
		if (i < level) {
			parent = npage[i];
			nids[i + 1] = FUNC12(parent, offset[i], false);
		}
	}
	dn->nid = nids[level];
	dn->ofs_in_node = offset[level];
	dn->node_page = npage[level];
	dn->data_blkaddr = FUNC3(dn->inode,
				dn->node_page, dn->ofs_in_node);
	return 0;

release_pages:
	FUNC11(parent, 1);
	if (i > 1)
		FUNC11(npage[0], 0);
release_out:
	dn->inode_page = NULL;
	dn->node_page = NULL;
	if (err == -ENOENT) {
		dn->cur_level = i;
		dn->max_level = level;
		dn->ofs_in_node = offset[level];
	}
	return err;
}