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
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int EPERM ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int MAY_NOT_BLOCK ; 
 int MAY_WRITE ; 
 int FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC6 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 

int FUNC8(struct inode *inode, int mask)
{
	struct gfs2_inode *ip;
	struct gfs2_holder i_gh;
	int error;

	FUNC7(&i_gh);
	ip = FUNC0(inode);
	if (FUNC4(ip->i_gl) == NULL) {
		if (mask & MAY_NOT_BLOCK)
			return -ECHILD;
		error = FUNC5(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &i_gh);
		if (error)
			return error;
	}

	if ((mask & MAY_WRITE) && FUNC1(inode))
		error = -EPERM;
	else
		error = FUNC2(inode, mask);
	if (FUNC6(&i_gh))
		FUNC3(&i_gh);

	return error;
}