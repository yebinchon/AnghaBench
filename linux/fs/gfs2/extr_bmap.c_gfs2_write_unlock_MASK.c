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
struct inode {int dummy; } ;
struct gfs2_sbd {struct inode* sd_statfs_inode; int /*<<< orphan*/ * sd_rindex; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gh; int /*<<< orphan*/  i_inode; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);

	if (&ip->i_inode == sdp->sd_rindex) {
		struct gfs2_inode *m_ip = FUNC0(sdp->sd_statfs_inode);

		FUNC2(&m_ip->i_gh);
	}
	FUNC2(&ip->i_gh);
}