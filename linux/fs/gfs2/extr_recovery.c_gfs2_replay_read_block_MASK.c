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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_inode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; struct gfs2_glock* i_gl; } ;
struct gfs2_glock {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_inode*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC3 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct gfs2_jdesc *jd, unsigned int blk,
			   struct buffer_head **bh)
{
	struct gfs2_inode *ip = FUNC0(jd->jd_inode);
	struct gfs2_glock *gl = ip->i_gl;
	int new = 0;
	u64 dblock;
	u32 extlen;
	int error;

	error = FUNC2(&ip->i_inode, blk, &new, &dblock, &extlen);
	if (error)
		return error;
	if (!dblock) {
		FUNC1(ip);
		return -EIO;
	}

	*bh = FUNC3(gl, dblock, extlen);

	return error;
}