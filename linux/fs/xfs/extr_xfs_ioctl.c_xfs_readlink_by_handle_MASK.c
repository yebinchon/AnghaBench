#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ohandle; int /*<<< orphan*/  ohandlen; } ;
typedef  TYPE_1__ xfs_fsop_handlereq_t ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EFAULT ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int FUNC6 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC7 (struct file*,TYPE_1__*) ; 

int
FUNC8(
	struct file		*parfilp,
	xfs_fsop_handlereq_t	*hreq)
{
	struct dentry		*dentry;
	__u32			olen;
	int			error;

	if (!FUNC2(CAP_SYS_ADMIN))
		return -EPERM;

	dentry = FUNC7(parfilp, hreq);
	if (FUNC0(dentry))
		return FUNC1(dentry);

	/* Restrict this handle operation to symlinks only. */
	if (!FUNC4(dentry)) {
		error = -EINVAL;
		goto out_dput;
	}

	if (FUNC3(&olen, hreq->ohandlen, sizeof(__u32))) {
		error = -EFAULT;
		goto out_dput;
	}

	error = FUNC6(dentry, hreq->ohandle, olen);

 out_dput:
	FUNC5(dentry);
	return error;
}