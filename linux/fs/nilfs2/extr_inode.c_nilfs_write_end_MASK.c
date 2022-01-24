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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 unsigned int FUNC0 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ; 
 unsigned int FUNC1 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct address_space *mapping,
			   loff_t pos, unsigned len, unsigned copied,
			   struct page *page, void *fsdata)
{
	struct inode *inode = mapping->host;
	unsigned int start = pos & (PAGE_SIZE - 1);
	unsigned int nr_dirty;
	int err;

	nr_dirty = FUNC1(page, start,
						  start + copied);
	copied = FUNC0(file, mapping, pos, len, copied, page,
				   fsdata);
	FUNC2(inode, nr_dirty);
	err = FUNC3(inode->i_sb);
	return err ? : copied;
}