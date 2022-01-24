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
typedef  scalar_t__ u64 ;
struct page {int dummy; } ;
struct TYPE_2__ {scalar_t__ pos; scalar_t__ version; scalar_t__ size; int /*<<< orphan*/  lock; scalar_t__ cached; } ;
struct fuse_inode {TYPE_1__ rdc; } ;
struct fuse_dirent {scalar_t__ off; } ;
struct file {int /*<<< orphan*/  f_mapping; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 size_t FUNC0 (struct fuse_dirent*) ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct page* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct fuse_inode* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,struct fuse_dirent*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static void FUNC15(struct file *file,
				     struct fuse_dirent *dirent, loff_t pos)
{
	struct fuse_inode *fi = FUNC6(FUNC3(file));
	size_t reclen = FUNC0(dirent);
	pgoff_t index;
	struct page *page;
	loff_t size;
	u64 version;
	unsigned int offset;
	void *addr;

	FUNC12(&fi->rdc.lock);
	/*
	 * Is cache already completed?  Or this entry does not go at the end of
	 * cache?
	 */
	if (fi->rdc.cached || pos != fi->rdc.pos) {
		FUNC13(&fi->rdc.lock);
		return;
	}
	version = fi->rdc.version;
	size = fi->rdc.size;
	offset = size & ~PAGE_MASK;
	index = size >> PAGE_SHIFT;
	/* Dirent doesn't fit in current page?  Jump to next page. */
	if (offset + reclen > PAGE_SIZE) {
		index++;
		offset = 0;
	}
	FUNC13(&fi->rdc.lock);

	if (offset) {
		page = FUNC4(file->f_mapping, index);
	} else {
		page = FUNC5(file->f_mapping, index,
					   FUNC9(file->f_mapping));
	}
	if (!page)
		return;

	FUNC12(&fi->rdc.lock);
	/* Raced with another readdir */
	if (fi->rdc.version != version || fi->rdc.size != size ||
	    FUNC1(fi->rdc.pos != pos))
		goto unlock;

	addr = FUNC7(page);
	if (!offset)
		FUNC2(addr);
	FUNC10(addr + offset, dirent, reclen);
	FUNC8(addr);
	fi->rdc.size = (index << PAGE_SHIFT) + offset + reclen;
	fi->rdc.pos = dirent->off;
unlock:
	FUNC13(&fi->rdc.lock);
	FUNC14(page);
	FUNC11(page);
}