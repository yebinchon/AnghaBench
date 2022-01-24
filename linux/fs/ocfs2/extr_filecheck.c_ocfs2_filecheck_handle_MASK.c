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
struct ocfs2_super {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int OCFS2_FILECHECK_ERR_END ; 
 unsigned int OCFS2_FILECHECK_ERR_FAILED ; 
 int OCFS2_FILECHECK_ERR_START ; 
 unsigned int OCFS2_FILECHECK_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct ocfs2_super*,unsigned long,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC3(struct ocfs2_super *osb,
		       unsigned long ino, unsigned int flags)
{
	unsigned int ret = OCFS2_FILECHECK_ERR_SUCCESS;
	struct inode *inode = NULL;
	int rc;

	inode = FUNC2(osb, ino, flags, 0);
	if (FUNC0(inode)) {
		rc = (int)(-(long)inode);
		if (rc >= OCFS2_FILECHECK_ERR_START &&
		    rc < OCFS2_FILECHECK_ERR_END)
			ret = rc;
		else
			ret = OCFS2_FILECHECK_ERR_FAILED;
	} else
		FUNC1(inode);

	return ret;
}