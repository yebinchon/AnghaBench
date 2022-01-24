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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct page {int index; struct address_space* mapping; } ;
struct inode {struct address_space* i_mapping; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  OCFS2_WRITE_MMAP ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  VM_FAULT_LOCKED ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 struct inode* FUNC2 (struct file*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct address_space*,int,unsigned int,int /*<<< orphan*/ ,struct page**,void**,struct buffer_head*,struct page*) ; 
 int FUNC6 (struct address_space*,int,unsigned int,unsigned int,void*) ; 
 int FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static vm_fault_t FUNC9(struct file *file,
			struct buffer_head *di_bh, struct page *page)
{
	int err;
	vm_fault_t ret = VM_FAULT_NOPAGE;
	struct inode *inode = FUNC2(file);
	struct address_space *mapping = inode->i_mapping;
	loff_t pos = FUNC7(page);
	unsigned int len = PAGE_SIZE;
	pgoff_t last_index;
	struct page *locked_page = NULL;
	void *fsdata;
	loff_t size = FUNC3(inode);

	last_index = (size - 1) >> PAGE_SHIFT;

	/*
	 * There are cases that lead to the page no longer bebongs to the
	 * mapping.
	 * 1) pagecache truncates locally due to memory pressure.
	 * 2) pagecache truncates when another is taking EX lock against 
	 * inode lock. see ocfs2_data_convert_worker.
	 * 
	 * The i_size check doesn't catch the case where nodes truncated and
	 * then re-extended the file. We'll re-check the page mapping after
	 * taking the page lock inside of ocfs2_write_begin_nolock().
	 *
	 * Let VM retry with these cases.
	 */
	if ((page->mapping != inode->i_mapping) ||
	    (!FUNC1(page)) ||
	    (FUNC7(page) >= size))
		goto out;

	/*
	 * Call ocfs2_write_begin() and ocfs2_write_end() to take
	 * advantage of the allocation code there. We pass a write
	 * length of the whole page (chopped to i_size) to make sure
	 * the whole thing is allocated.
	 *
	 * Since we know the page is up to date, we don't have to
	 * worry about ocfs2_write_begin() skipping some buffer reads
	 * because the "write" would invalidate their data.
	 */
	if (page->index == last_index)
		len = ((size - 1) & ~PAGE_MASK) + 1;

	err = FUNC5(mapping, pos, len, OCFS2_WRITE_MMAP,
				       &locked_page, &fsdata, di_bh, page);
	if (err) {
		if (err != -ENOSPC)
			FUNC4(err);
		ret = FUNC8(err);
		goto out;
	}

	if (!locked_page) {
		ret = VM_FAULT_NOPAGE;
		goto out;
	}
	err = FUNC6(mapping, pos, len, len, fsdata);
	FUNC0(err != len);
	ret = VM_FAULT_LOCKED;
out:
	return ret;
}