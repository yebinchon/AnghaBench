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
struct inode {unsigned int i_size; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

int FUNC6(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	struct inode *inode = mapping->host;
	loff_t old_size = inode->i_size;
	bool i_size_changed = false;

	copied = FUNC0(file, mapping, pos, len, copied, page, fsdata);

	/*
	 * No need to use i_size_read() here, the i_size cannot change under us
	 * because we hold i_rwsem.
	 *
	 * But it's important to update i_size while still holding page lock:
	 * page writeout could otherwise come in and zero beyond i_size.
	 */
	if (pos + copied > inode->i_size) {
		FUNC1(inode, pos + copied);
		i_size_changed = true;
	}

	FUNC5(page);
	FUNC4(page);

	if (old_size < pos)
		FUNC3(inode, old_size, pos);
	/*
	 * Don't mark the inode dirty under page lock. First, it unnecessarily
	 * makes the holding time of page lock longer. Second, it forces lock
	 * ordering of page lock and transaction start for journaling
	 * filesystems.
	 */
	if (i_size_changed)
		FUNC2(inode);
	return copied;
}