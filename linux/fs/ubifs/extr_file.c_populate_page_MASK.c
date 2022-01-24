#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ubifs_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  sqnum; } ;
struct ubifs_data_node {int /*<<< orphan*/  compr_type; int /*<<< orphan*/  data; TYPE_2__ ch; int /*<<< orphan*/  size; } ;
struct page {int index; int /*<<< orphan*/  flags; TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct bu_info {int cnt; TYPE_3__* zbranch; struct ubifs_data_node* buf; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_8__ {scalar_t__ creat_sqnum; } ;
struct TYPE_7__ {int offs; int /*<<< orphan*/  key; } ;
struct TYPE_5__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int UBIFS_BLOCKS_PER_PAGE ; 
 unsigned int UBIFS_BLOCKS_PER_PAGE_SHIFT ; 
 int UBIFS_BLOCK_SHIFT ; 
 int UBIFS_BLOCK_SIZE ; 
 int UBIFS_DATA_NODE_SZ ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (struct inode*) ; 
 unsigned int FUNC8 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 int FUNC17 (struct ubifs_info*,int /*<<< orphan*/ *,int,void*,int*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct inode*,struct ubifs_data_node*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_info*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC20 (struct inode*) ; 

__attribute__((used)) static int FUNC21(struct ubifs_info *c, struct page *page,
			 struct bu_info *bu, int *n)
{
	int i = 0, nn = *n, offs = bu->zbranch[0].offs, hole = 0, read = 0;
	struct inode *inode = page->mapping->host;
	loff_t i_size = FUNC7(inode);
	unsigned int page_block;
	void *addr, *zaddr;
	pgoff_t end_index;

	FUNC5("ino %lu, pg %lu, i_size %lld, flags %#lx",
		inode->i_ino, page->index, i_size, page->flags);

	addr = zaddr = FUNC9(page);

	end_index = (i_size - 1) >> PAGE_SHIFT;
	if (!i_size || page->index > end_index) {
		hole = 1;
		FUNC14(addr, 0, PAGE_SIZE);
		goto out_hole;
	}

	page_block = page->index << UBIFS_BLOCKS_PER_PAGE_SHIFT;
	while (1) {
		int err, len, out_len, dlen;

		if (nn >= bu->cnt) {
			hole = 1;
			FUNC14(addr, 0, UBIFS_BLOCK_SIZE);
		} else if (FUNC8(c, &bu->zbranch[nn].key) == page_block) {
			struct ubifs_data_node *dn;

			dn = bu->buf + (bu->zbranch[nn].offs - offs);

			FUNC15(c, FUNC13(dn->ch.sqnum) >
				     FUNC20(inode)->creat_sqnum);

			len = FUNC12(dn->size);
			if (len <= 0 || len > UBIFS_BLOCK_SIZE)
				goto out_err;

			dlen = FUNC12(dn->ch.len) - UBIFS_DATA_NODE_SZ;
			out_len = UBIFS_BLOCK_SIZE;

			if (FUNC16(inode)) {
				err = FUNC18(inode, dn, &dlen, page_block);
				if (err)
					goto out_err;
			}

			err = FUNC17(c, &dn->data, dlen, addr, &out_len,
					       FUNC11(dn->compr_type));
			if (err || len != out_len)
				goto out_err;

			if (len < UBIFS_BLOCK_SIZE)
				FUNC14(addr + len, 0, UBIFS_BLOCK_SIZE - len);

			nn += 1;
			read = (i << UBIFS_BLOCK_SHIFT) + len;
		} else if (FUNC8(c, &bu->zbranch[nn].key) < page_block) {
			nn += 1;
			continue;
		} else {
			hole = 1;
			FUNC14(addr, 0, UBIFS_BLOCK_SIZE);
		}
		if (++i >= UBIFS_BLOCKS_PER_PAGE)
			break;
		addr += UBIFS_BLOCK_SIZE;
		page_block += 1;
	}

	if (end_index == page->index) {
		int len = i_size & (PAGE_SIZE - 1);

		if (len && len < read)
			FUNC14(zaddr + len, 0, read - len);
	}

out_hole:
	if (hole) {
		FUNC2(page);
		FUNC5("hole");
	}

	FUNC4(page);
	FUNC0(page);
	FUNC6(page);
	FUNC10(page);
	*n = nn;
	return 0;

out_err:
	FUNC1(page);
	FUNC3(page);
	FUNC6(page);
	FUNC10(page);
	FUNC19(c, "bad data node (block %u, inode %lu)",
		  page_block, inode->i_ino);
	return -EINVAL;
}