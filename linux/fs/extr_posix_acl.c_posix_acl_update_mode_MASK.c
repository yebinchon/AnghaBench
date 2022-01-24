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
typedef  int /*<<< orphan*/  umode_t ;
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSETID ; 
 int /*<<< orphan*/  S_ISGID ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct posix_acl*,int /*<<< orphan*/ *) ; 

int FUNC3(struct inode *inode, umode_t *mode_p,
			  struct posix_acl **acl)
{
	umode_t mode = inode->i_mode;
	int error;

	error = FUNC2(*acl, &mode);
	if (error < 0)
		return error;
	if (error == 0)
		*acl = NULL;
	if (!FUNC1(inode->i_gid) &&
	    !FUNC0(inode, CAP_FSETID))
		mode &= ~S_ISGID;
	*mode_p = mode;
	return 0;
}