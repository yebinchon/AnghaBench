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
struct iomap {int dummy; } ;
struct inode {unsigned int i_blkbits; } ;
struct gfs2_sbd {int dummy; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (struct inode*) ; 
 scalar_t__ RES_DINODE ; 
 int FUNC1 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, loff_t pos,
				   unsigned len, struct iomap *iomap)
{
	unsigned int blockmask = FUNC2(inode) - 1;
	struct gfs2_sbd *sdp = FUNC0(inode);
	unsigned int blocks;

	blocks = ((pos & blockmask) + len + blockmask) >> inode->i_blkbits;
	return FUNC1(sdp, RES_DINODE + blocks, 0);
}