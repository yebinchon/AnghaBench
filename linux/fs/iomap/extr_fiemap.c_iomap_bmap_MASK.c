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
struct inode {int i_blkbits; } ;
struct address_space {struct inode* host; } ;
typedef  int sector_t ;
typedef  int loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct address_space*) ; 
 unsigned int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int,unsigned int,int /*<<< orphan*/ ,struct iomap_ops const*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iomap_bmap_actor ; 

sector_t
FUNC3(struct address_space *mapping, sector_t bno,
		const struct iomap_ops *ops)
{
	struct inode *inode = mapping->host;
	loff_t pos = bno << inode->i_blkbits;
	unsigned blocksize = FUNC1(inode);

	if (FUNC0(mapping))
		return 0;

	bno = 0;
	FUNC2(inode, pos, blocksize, 0, ops, &bno, iomap_bmap_actor);
	return bno;
}