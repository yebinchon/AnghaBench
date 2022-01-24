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
struct inode {TYPE_3__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ s_maxbytes; } ;
struct TYPE_5__ {scalar_t__ s_bitmap_maxbytes; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
#define  SEEK_DATA 129 
#define  SEEK_HOLE 128 
 int /*<<< orphan*/  ext4_iomap_ops ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct file*,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct inode*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct file*,scalar_t__,scalar_t__) ; 

loff_t FUNC9(struct file *file, loff_t offset, int whence)
{
	struct inode *inode = file->f_mapping->host;
	loff_t maxbytes;

	if (!(FUNC1(inode, EXT4_INODE_EXTENTS)))
		maxbytes = FUNC0(inode->i_sb)->s_bitmap_maxbytes;
	else
		maxbytes = inode->i_sb->s_maxbytes;

	switch (whence) {
	default:
		return FUNC2(file, offset, whence,
						maxbytes, FUNC3(inode));
	case SEEK_HOLE:
		FUNC4(inode);
		offset = FUNC7(inode, offset, &ext4_iomap_ops);
		FUNC5(inode);
		break;
	case SEEK_DATA:
		FUNC4(inode);
		offset = FUNC6(inode, offset, &ext4_iomap_ops);
		FUNC5(inode);
		break;
	}

	if (offset < 0)
		return offset;
	return FUNC8(file, offset, maxbytes);
}