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
typedef  int u64 ;
struct TYPE_2__ {int sb_bsize_shift; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_jdesc {int jd_blocks; int /*<<< orphan*/  jd_inode; } ;
struct gfs2_inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 struct gfs2_inode* FUNC1 (int /*<<< orphan*/ ) ; 
 struct gfs2_sbd* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*) ; 
 scalar_t__ FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct gfs2_jdesc *jd)
{
	struct gfs2_inode *ip = FUNC1(jd->jd_inode);
	struct gfs2_sbd *sdp = FUNC2(jd->jd_inode);
	u64 size = FUNC6(jd->jd_inode);

	if (FUNC3(jd->jd_inode, 8 << 20, FUNC0(30)))
		return -EIO;

	jd->jd_blocks = size >> sdp->sd_sb.sb_bsize_shift;

	if (FUNC5(ip, 0, size)) {
		FUNC4(ip);
		return -EIO;
	}

	return 0;
}