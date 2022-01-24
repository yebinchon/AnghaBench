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
struct super_block {int dummy; } ;
struct iomap {scalar_t__ offset; int length; int flags; int addr; } ;
struct inode {int i_blkbits; struct super_block* i_sb; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int IOMAP_F_NEW ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct inode*,scalar_t__,scalar_t__,struct iomap*) ; 
 scalar_t__ FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC8 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct super_block*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, loff_t offset, loff_t len,
			   int mode)
{
	struct super_block *sb = inode->i_sb;
	struct gfs2_inode *ip = FUNC0(inode);
	loff_t end = offset + len;
	struct buffer_head *dibh;
	int error;

	error = FUNC6(ip, &dibh);
	if (FUNC10(error))
		return error;

	FUNC7(ip->i_gl, dibh);

	if (FUNC5(ip)) {
		error = FUNC8(ip, NULL);
		if (FUNC10(error))
			goto out;
	}

	while (offset < end) {
		struct iomap iomap = { };

		error = FUNC4(inode, offset, end - offset,
					     &iomap);
		if (error)
			goto out;
		offset = iomap.offset + iomap.length;
		if (!(iomap.flags & IOMAP_F_NEW))
			continue;
		error = FUNC9(sb, iomap.addr >> inode->i_blkbits,
					 iomap.length >> inode->i_blkbits,
					 GFP_NOFS);
		if (error) {
			FUNC3(FUNC1(inode), "Failed to zero data buffers\n");
			goto out;
		}
	}
out:
	FUNC2(dibh);
	return error;
}