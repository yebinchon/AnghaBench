#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {scalar_t__ i_nlink; } ;
struct TYPE_3__ {struct gfs2_glock* gh_gl; } ;
struct gfs2_inode {TYPE_1__ i_iopen_gh; int /*<<< orphan*/  i_flags; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_delete; int /*<<< orphan*/  gl_flags; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GIF_FREE_VFS_INODE ; 
 int /*<<< orphan*/  GLF_DEMOTE ; 
 int PF_MEMALLOC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_2__* current ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  gfs2_delete_workqueue ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_glock*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode)
{
	struct gfs2_inode *ip = FUNC0(inode);

	if (!FUNC7(GIF_FREE_VFS_INODE, &ip->i_flags) &&
	    inode->i_nlink &&
	    FUNC5(&ip->i_iopen_gh)) {
		struct gfs2_glock *gl = ip->i_iopen_gh.gh_gl;
		if (FUNC7(GLF_DEMOTE, &gl->gl_flags))
			FUNC1(inode);
	}

	/*
	 * When under memory pressure when an inode's link count has dropped to
	 * zero, defer deleting the inode to the delete workqueue.  This avoids
	 * calling into DLM under memory pressure, which can deadlock.
	 */
	if (!inode->i_nlink &&
	    FUNC8(current->flags & PF_MEMALLOC) &&
	    FUNC5(&ip->i_iopen_gh)) {
		struct gfs2_glock *gl = ip->i_iopen_gh.gh_gl;

		FUNC3(gl);
		if (FUNC6(gfs2_delete_workqueue, &gl->gl_delete) == 0)
			FUNC4(gl);
		return false;
	}

	return FUNC2(inode);
}