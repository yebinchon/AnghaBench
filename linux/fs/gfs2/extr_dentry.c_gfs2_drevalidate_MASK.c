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
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ls_ops; } ;
struct gfs2_sbd {TYPE_2__ sd_lockstruct; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * lm_mount; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOENT ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 unsigned int LOOKUP_RCU ; 
 struct inode* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ *,struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 

__attribute__((used)) static int FUNC10(struct dentry *dentry, unsigned int flags)
{
	struct dentry *parent;
	struct gfs2_sbd *sdp;
	struct gfs2_inode *dip;
	struct inode *inode;
	struct gfs2_holder d_gh;
	struct gfs2_inode *ip = NULL;
	int error, valid = 0;
	int had_lock = 0;

	if (flags & LOOKUP_RCU)
		return -ECHILD;

	parent = FUNC3(dentry);
	sdp = FUNC1(FUNC2(parent));
	dip = FUNC0(FUNC2(parent));
	inode = FUNC2(dentry);

	if (inode) {
		if (FUNC9(inode))
			goto out;
		ip = FUNC0(inode);
	}

	if (sdp->sd_lockstruct.ls_ops->lm_mount == NULL) {
		valid = 1;
		goto out;
	}

	had_lock = (FUNC7(dip->i_gl) != NULL);
	if (!had_lock) {
		error = FUNC8(dip->i_gl, LM_ST_SHARED, 0, &d_gh);
		if (error)
			goto out;
	}

	error = FUNC5(FUNC2(parent), &dentry->d_name, ip);
	valid = inode ? !error : (error == -ENOENT);

	if (!had_lock)
		FUNC6(&d_gh);
out:
	FUNC4(parent);
	return valid;
}