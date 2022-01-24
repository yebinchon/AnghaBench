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
struct metapath {int mp_aheight; } ;
struct iomap {scalar_t__ type; scalar_t__ length; int flags; int addr; } ;
struct inode {int i_blkbits; int /*<<< orphan*/  i_sb; } ;
struct gfs2_inode {int dummy; } ;
struct buffer_head {int b_size; } ;
typedef  scalar_t__ sector_t ;
typedef  int loff_t ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int IOMAP_F_GFS2_BOUNDARY ; 
 int IOMAP_F_NEW ; 
 scalar_t__ IOMAP_HOLE ; 
 int IOMAP_NULL_ADDR ; 
 int /*<<< orphan*/  IOMAP_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct inode*,struct iomap*,struct metapath*) ; 
 int FUNC5 (struct inode*,int,int,int /*<<< orphan*/ ,struct iomap*,struct metapath*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct metapath*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*,struct buffer_head*,scalar_t__,int,int) ; 

int FUNC11(struct inode *inode, sector_t lblock,
		   struct buffer_head *bh_map, int create)
{
	struct gfs2_inode *ip = FUNC0(inode);
	loff_t pos = (loff_t)lblock << inode->i_blkbits;
	loff_t length = bh_map->b_size;
	struct metapath mp = { .mp_aheight = 1, };
	struct iomap iomap = { };
	int ret;

	FUNC2(bh_map);
	FUNC3(bh_map);
	FUNC1(bh_map);
	FUNC10(ip, bh_map, lblock, create, 1);

	if (create) {
		ret = FUNC5(inode, pos, length, IOMAP_WRITE, &iomap, &mp);
		if (!ret && iomap.type == IOMAP_HOLE)
			ret = FUNC4(inode, &iomap, &mp);
		FUNC7(&mp);
	} else {
		ret = FUNC5(inode, pos, length, 0, &iomap, &mp);
		FUNC7(&mp);
	}
	if (ret)
		goto out;

	if (iomap.length > bh_map->b_size) {
		iomap.length = bh_map->b_size;
		iomap.flags &= ~IOMAP_F_GFS2_BOUNDARY;
	}
	if (iomap.addr != IOMAP_NULL_ADDR)
		FUNC6(bh_map, inode->i_sb, iomap.addr >> inode->i_blkbits);
	bh_map->b_size = iomap.length;
	if (iomap.flags & IOMAP_F_GFS2_BOUNDARY)
		FUNC8(bh_map);
	if (iomap.flags & IOMAP_F_NEW)
		FUNC9(bh_map);

out:
	FUNC10(ip, bh_map, lblock, create, ret);
	return ret;
}