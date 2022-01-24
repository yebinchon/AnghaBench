#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct ubifs_inode {int synced_i_size; int /*<<< orphan*/  ui_lock; } ;
struct ubifs_info {int dummy; } ;
struct page {scalar_t__ index; int /*<<< orphan*/  flags; TYPE_1__* mapping; } ;
struct inode {TYPE_3__* i_sb; int /*<<< orphan*/  i_ino; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
struct TYPE_6__ {TYPE_2__* s_op; struct ubifs_info* s_fs_info; } ;
struct TYPE_5__ {int (* write_inode ) (struct inode*,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct inode*) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static int FUNC15(struct page *page, struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	struct ubifs_inode *ui = FUNC13(inode);
	loff_t i_size =  FUNC4(inode), synced_i_size;
	pgoff_t end_index = i_size >> PAGE_SHIFT;
	int err, len = i_size & (PAGE_SIZE - 1);
	void *kaddr;

	FUNC1("ino %lu, pg %lu, pg flags %#lx",
		inode->i_ino, page->index, page->flags);
	FUNC12(c, FUNC0(page));

	/* Is the page fully outside @i_size? (truncate in progress) */
	if (page->index > end_index || (page->index == end_index && !len)) {
		err = 0;
		goto out_unlock;
	}

	FUNC8(&ui->ui_lock);
	synced_i_size = ui->synced_i_size;
	FUNC9(&ui->ui_lock);

	/* Is the page fully inside @i_size? */
	if (page->index < end_index) {
		if (page->index >= synced_i_size >> PAGE_SHIFT) {
			err = inode->i_sb->s_op->write_inode(inode, NULL);
			if (err)
				goto out_unlock;
			/*
			 * The inode has been written, but the write-buffer has
			 * not been synchronized, so in case of an unclean
			 * reboot we may end up with some pages beyond inode
			 * size, but they would be in the journal (because
			 * commit flushes write buffers) and recovery would deal
			 * with this.
			 */
		}
		return FUNC2(page, PAGE_SIZE);
	}

	/*
	 * The page straddles @i_size. It must be zeroed out on each and every
	 * writepage invocation because it may be mmapped. "A file is mapped
	 * in multiples of the page size. For a file that is not a multiple of
	 * the page size, the remaining memory is zeroed when mapped, and
	 * writes to that region are not written out to the file."
	 */
	kaddr = FUNC5(page);
	FUNC7(kaddr + len, 0, PAGE_SIZE - len);
	FUNC3(page);
	FUNC6(kaddr);

	if (i_size > synced_i_size) {
		err = inode->i_sb->s_op->write_inode(inode, NULL);
		if (err)
			goto out_unlock;
	}

	return FUNC2(page, len);

out_unlock:
	FUNC14(page);
	return err;
}