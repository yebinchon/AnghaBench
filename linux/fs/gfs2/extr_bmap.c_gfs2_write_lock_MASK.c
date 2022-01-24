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
struct gfs2_inode {int /*<<< orphan*/  i_gh; int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_inode; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GL_NOCACHE ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	int error;

	FUNC5(ip->i_gl, LM_ST_EXCLUSIVE, 0, &ip->i_gh);
	error = FUNC3(&ip->i_gh);
	if (error)
		goto out_uninit;
	if (&ip->i_inode == sdp->sd_rindex) {
		struct gfs2_inode *m_ip = FUNC0(sdp->sd_statfs_inode);

		error = FUNC4(m_ip->i_gl, LM_ST_EXCLUSIVE,
					   GL_NOCACHE, &m_ip->i_gh);
		if (error)
			goto out_unlock;
	}
	return 0;

out_unlock:
	FUNC2(&ip->i_gh);
out_uninit:
	FUNC6(&ip->i_gh);
	return error;
}