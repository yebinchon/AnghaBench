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
struct inode {int /*<<< orphan*/  i_mapping; TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct dnode_of_data {scalar_t__ ofs_in_node; int /*<<< orphan*/  node_page; int /*<<< orphan*/  inode; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_4__ {int s_maxbytes; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 int PAGE_SHIFT ; 
 int SEEK_DATA ; 
 int SEEK_HOLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct dnode_of_data*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dnode_of_data*) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct file*,int,int) ; 

__attribute__((used)) static loff_t FUNC17(struct file *file, loff_t offset, int whence)
{
	struct inode *inode = file->f_mapping->host;
	loff_t maxbytes = inode->i_sb->s_maxbytes;
	struct dnode_of_data dn;
	pgoff_t pgofs, end_offset, dirty;
	loff_t data_ofs = offset;
	loff_t isize;
	int err = 0;

	FUNC13(inode);

	isize = FUNC12(inode);
	if (offset >= isize)
		goto fail;

	/* handle inline data case */
	if (FUNC8(inode) || FUNC9(inode)) {
		if (whence == SEEK_HOLE)
			data_ofs = isize;
		goto found;
	}

	pgofs = (pgoff_t)(offset >> PAGE_SHIFT);

	dirty = FUNC3(inode->i_mapping, pgofs, whence);

	for (; data_ofs < isize; data_ofs = (loff_t)pgofs << PAGE_SHIFT) {
		FUNC15(&dn, inode, NULL, NULL, 0);
		err = FUNC6(&dn, pgofs, LOOKUP_NODE);
		if (err && err != -ENOENT) {
			goto fail;
		} else if (err == -ENOENT) {
			/* direct node does not exists */
			if (whence == SEEK_DATA) {
				pgofs = FUNC7(&dn, pgofs);
				continue;
			} else {
				goto found;
			}
		}

		end_offset = FUNC0(dn.node_page, inode);

		/* find data/hole in dnode block */
		for (; dn.ofs_in_node < end_offset;
				dn.ofs_in_node++, pgofs++,
				data_ofs = (loff_t)pgofs << PAGE_SHIFT) {
			block_t blkaddr;

			blkaddr = FUNC5(dn.inode,
					dn.node_page, dn.ofs_in_node);

			if (FUNC4(blkaddr) &&
				!FUNC10(FUNC1(inode),
					blkaddr, DATA_GENERIC_ENHANCE)) {
				FUNC11(&dn);
				goto fail;
			}

			if (FUNC2(FUNC1(inode), blkaddr, dirty,
							pgofs, whence)) {
				FUNC11(&dn);
				goto found;
			}
		}
		FUNC11(&dn);
	}

	if (whence == SEEK_DATA)
		goto fail;
found:
	if (whence == SEEK_HOLE && data_ofs > isize)
		data_ofs = isize;
	FUNC14(inode);
	return FUNC16(file, data_ofs, maxbytes);
fail:
	FUNC14(inode);
	return -ENXIO;
}