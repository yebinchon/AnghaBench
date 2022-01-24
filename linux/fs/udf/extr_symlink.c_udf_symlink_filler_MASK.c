#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {unsigned char* i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_lenEAttr; int /*<<< orphan*/  i_data_sem; TYPE_2__ i_ext; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_size; TYPE_3__* i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {unsigned char* b_data; } ;
struct TYPE_7__ {scalar_t__ s_blocksize; } ;
struct TYPE_5__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 int ENAMETOOLONG ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct udf_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (struct page*) ; 
 struct buffer_head* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,unsigned char*,scalar_t__,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	struct buffer_head *bh = NULL;
	unsigned char *symlink;
	int err;
	unsigned char *p = FUNC5(page);
	struct udf_inode_info *iinfo;
	uint32_t pos;

	/* We don't support symlinks longer than one block */
	if (inode->i_size > inode->i_sb->s_blocksize) {
		err = -ENAMETOOLONG;
		goto out_unmap;
	}

	iinfo = FUNC2(inode);
	pos = FUNC7(inode, 0);

	FUNC4(&iinfo->i_data_sem);
	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
		symlink = iinfo->i_ext.i_data + iinfo->i_lenEAttr;
	} else {
		bh = FUNC6(inode->i_sb, pos);

		if (!bh) {
			err = -EIO;
			goto out_unlock_inode;
		}

		symlink = bh->b_data;
	}

	err = FUNC8(inode->i_sb, symlink, inode->i_size, p, PAGE_SIZE);
	FUNC3(bh);
	if (err)
		goto out_unlock_inode;

	FUNC10(&iinfo->i_data_sem);
	FUNC1(page);
	FUNC9(page);
	return 0;

out_unlock_inode:
	FUNC10(&iinfo->i_data_sem);
	FUNC0(page);
out_unmap:
	FUNC9(page);
	return err;
}