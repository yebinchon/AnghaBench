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
struct inode {TYPE_1__* i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,struct address_space*,int,int) ; 
 int /*<<< orphan*/  ext4_iomap_ops ; 
 int FUNC2 (struct inode*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(handle_t *handle,
		struct address_space *mapping, loff_t from, loff_t length)
{
	struct inode *inode = mapping->host;
	unsigned offset = from & (PAGE_SIZE-1);
	unsigned blocksize = inode->i_sb->s_blocksize;
	unsigned max = blocksize - (offset & (blocksize - 1));

	/*
	 * correct length if it does not fall between
	 * 'from' and the end of the block
	 */
	if (length > max || length < 0)
		length = max;

	if (FUNC0(inode)) {
		return FUNC2(inode, from, length, NULL,
					&ext4_iomap_ops);
	}
	return FUNC1(handle, mapping, from, length);
}