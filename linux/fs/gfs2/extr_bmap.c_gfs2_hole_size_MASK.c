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
typedef  int u64 ;
struct metapath {int dummy; } ;
struct iomap {int length; } ;
struct inode {int i_blkbits; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct metapath*,struct metapath*) ; 
 int /*<<< orphan*/  gfs2_hole_walker ; 
 int FUNC2 (struct inode*,struct metapath*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct metapath*) ; 
 int /*<<< orphan*/  FUNC4 (struct metapath*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, sector_t lblock, u64 len,
			  struct metapath *mp, struct iomap *iomap)
{
	struct metapath clone;
	u64 hole_size;
	int ret;

	FUNC1(&clone, mp);
	ret = FUNC2(inode, &clone, len, gfs2_hole_walker);
	if (ret < 0)
		goto out;

	if (ret == 1)
		hole_size = FUNC3(FUNC0(inode), &clone) - lblock;
	else
		hole_size = len;
	iomap->length = hole_size << inode->i_blkbits;
	ret = 0;

out:
	FUNC4(&clone);
	return ret;
}