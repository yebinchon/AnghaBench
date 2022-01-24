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
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_rahead; int /*<<< orphan*/  i_no_addr; struct gfs2_glock* i_gl; int /*<<< orphan*/  i_inode; } ;
struct gfs2_glock {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_WAIT ; 
 int EIO ; 
 int /*<<< orphan*/  GFS2_METATYPE_DI ; 
 int /*<<< orphan*/  GFS2_METATYPE_IN ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 scalar_t__ FUNC3 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 

int FUNC4(struct gfs2_inode *ip, int height, u64 num,
			      struct buffer_head **bhp)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_glock *gl = ip->i_gl;
	struct buffer_head *bh;
	int ret = 0;
	u32 mtype = height ? GFS2_METATYPE_IN : GFS2_METATYPE_DI;
	int rahead = 0;

	if (num == ip->i_no_addr)
		rahead = ip->i_rahead;

	ret = FUNC2(gl, num, DIO_WAIT, rahead, &bh);
	if (ret == 0 && FUNC3(sdp, bh, mtype)) {
		FUNC1(bh);
		ret = -EIO;
	} else {
		*bhp = bh;
	}
	return ret;
}