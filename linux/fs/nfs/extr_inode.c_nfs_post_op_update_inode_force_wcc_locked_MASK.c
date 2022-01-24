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
struct nfs_fattr {int valid; int /*<<< orphan*/  pre_size; void* pre_mtime; void* pre_ctime; int /*<<< orphan*/  pre_change_attr; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;

/* Variables and functions */
 int NFS_ATTR_FATTR ; 
 int NFS_ATTR_FATTR_CHANGE ; 
 int NFS_ATTR_FATTR_CTIME ; 
 int NFS_ATTR_FATTR_MTIME ; 
 int NFS_ATTR_FATTR_PRECHANGE ; 
 int NFS_ATTR_FATTR_PRECTIME ; 
 int NFS_ATTR_FATTR_PREMTIME ; 
 int NFS_ATTR_FATTR_PRESIZE ; 
 int NFS_ATTR_FATTR_SIZE ; 
 int NFS_INO_INVALID_CHANGE ; 
 int NFS_INO_INVALID_CTIME ; 
 int NFS_INO_INVALID_MTIME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct nfs_fattr*) ; 
 int FUNC3 (struct inode*,struct nfs_fattr*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct inode *inode, struct nfs_fattr *fattr)
{
	int status;

	/* Don't do a WCC update if these attributes are already stale */
	if ((fattr->valid & NFS_ATTR_FATTR) == 0 ||
			!FUNC2(inode, fattr)) {
		fattr->valid &= ~(NFS_ATTR_FATTR_PRECHANGE
				| NFS_ATTR_FATTR_PRESIZE
				| NFS_ATTR_FATTR_PREMTIME
				| NFS_ATTR_FATTR_PRECTIME);
		goto out_noforce;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_CHANGE) != 0 &&
			(fattr->valid & NFS_ATTR_FATTR_PRECHANGE) == 0) {
		fattr->pre_change_attr = FUNC1(inode);
		fattr->valid |= NFS_ATTR_FATTR_PRECHANGE;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_CTIME) != 0 &&
			(fattr->valid & NFS_ATTR_FATTR_PRECTIME) == 0) {
		fattr->pre_ctime = FUNC4(inode->i_ctime);
		fattr->valid |= NFS_ATTR_FATTR_PRECTIME;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_MTIME) != 0 &&
			(fattr->valid & NFS_ATTR_FATTR_PREMTIME) == 0) {
		fattr->pre_mtime = FUNC4(inode->i_mtime);
		fattr->valid |= NFS_ATTR_FATTR_PREMTIME;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_SIZE) != 0 &&
			(fattr->valid & NFS_ATTR_FATTR_PRESIZE) == 0) {
		fattr->pre_size = FUNC0(inode);
		fattr->valid |= NFS_ATTR_FATTR_PRESIZE;
	}
out_noforce:
	status = FUNC3(inode, fattr,
			NFS_INO_INVALID_CHANGE
			| NFS_INO_INVALID_CTIME
			| NFS_INO_INVALID_MTIME);
	return status;
}