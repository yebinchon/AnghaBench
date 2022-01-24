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
struct iomap_ops {int dummy; } ;
struct inode {int dummy; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,unsigned int,unsigned int,int*,struct iomap_ops const*) ; 

int
FUNC2(struct inode *inode, loff_t pos, bool *did_zero,
		const struct iomap_ops *ops)
{
	unsigned int blocksize = FUNC0(inode);
	unsigned int off = pos & (blocksize - 1);

	/* Block boundary? Nothing to do */
	if (!off)
		return 0;
	return FUNC1(inode, pos, blocksize - off, did_zero, ops);
}