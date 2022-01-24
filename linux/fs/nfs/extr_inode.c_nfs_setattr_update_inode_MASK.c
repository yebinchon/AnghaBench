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
struct nfs_fattr {int valid; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; int /*<<< orphan*/  gencount; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_lock; void* i_ctime; void* i_mtime; void* i_atime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct iattr {int ia_valid; int ia_mode; void* ia_mtime; void* ia_atime; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_size; } ;
struct TYPE_2__ {int cache_validity; int /*<<< orphan*/  attr_gencount; } ;

/* Variables and functions */
 int ATTR_ATIME ; 
 int ATTR_ATIME_SET ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_MTIME_SET ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  NFSIOS_SETATTRTRUNC ; 
 int NFS_ATTR_FATTR_ATIME ; 
 int NFS_ATTR_FATTR_CTIME ; 
 int NFS_ATTR_FATTR_MTIME ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int NFS_INO_INVALID_ACCESS ; 
 int NFS_INO_INVALID_ACL ; 
 int NFS_INO_INVALID_ATIME ; 
 int NFS_INO_INVALID_CHANGE ; 
 int NFS_INO_INVALID_CTIME ; 
 int NFS_INO_INVALID_MTIME ; 
 int S_IALLUGO ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct inode *inode, struct iattr *attr,
		struct nfs_fattr *fattr)
{
	/* Barrier: bump the attribute generation count. */
	FUNC1(fattr);

	FUNC6(&inode->i_lock);
	FUNC0(inode)->attr_gencount = fattr->gencount;
	if ((attr->ia_valid & ATTR_SIZE) != 0) {
		FUNC3(inode, NFS_INO_INVALID_MTIME);
		FUNC2(inode, NFSIOS_SETATTRTRUNC);
		FUNC5(inode, attr->ia_size);
	}
	if ((attr->ia_valid & (ATTR_MODE|ATTR_UID|ATTR_GID)) != 0) {
		FUNC0(inode)->cache_validity &= ~NFS_INO_INVALID_CTIME;
		if ((attr->ia_valid & ATTR_MODE) != 0) {
			int mode = attr->ia_mode & S_IALLUGO;
			mode |= inode->i_mode & ~S_IALLUGO;
			inode->i_mode = mode;
		}
		if ((attr->ia_valid & ATTR_UID) != 0)
			inode->i_uid = attr->ia_uid;
		if ((attr->ia_valid & ATTR_GID) != 0)
			inode->i_gid = attr->ia_gid;
		if (fattr->valid & NFS_ATTR_FATTR_CTIME)
			inode->i_ctime = FUNC8(fattr->ctime);
		else
			FUNC3(inode, NFS_INO_INVALID_CHANGE
					| NFS_INO_INVALID_CTIME);
		FUNC3(inode, NFS_INO_INVALID_ACCESS
				| NFS_INO_INVALID_ACL);
	}
	if (attr->ia_valid & (ATTR_ATIME_SET|ATTR_ATIME)) {
		FUNC0(inode)->cache_validity &= ~(NFS_INO_INVALID_ATIME
				| NFS_INO_INVALID_CTIME);
		if (fattr->valid & NFS_ATTR_FATTR_ATIME)
			inode->i_atime = FUNC8(fattr->atime);
		else if (attr->ia_valid & ATTR_ATIME_SET)
			inode->i_atime = attr->ia_atime;
		else
			FUNC3(inode, NFS_INO_INVALID_ATIME);

		if (fattr->valid & NFS_ATTR_FATTR_CTIME)
			inode->i_ctime = FUNC8(fattr->ctime);
		else
			FUNC3(inode, NFS_INO_INVALID_CHANGE
					| NFS_INO_INVALID_CTIME);
	}
	if (attr->ia_valid & (ATTR_MTIME_SET|ATTR_MTIME)) {
		FUNC0(inode)->cache_validity &= ~(NFS_INO_INVALID_MTIME
				| NFS_INO_INVALID_CTIME);
		if (fattr->valid & NFS_ATTR_FATTR_MTIME)
			inode->i_mtime = FUNC8(fattr->mtime);
		else if (attr->ia_valid & ATTR_MTIME_SET)
			inode->i_mtime = attr->ia_mtime;
		else
			FUNC3(inode, NFS_INO_INVALID_MTIME);

		if (fattr->valid & NFS_ATTR_FATTR_CTIME)
			inode->i_ctime = FUNC8(fattr->ctime);
		else
			FUNC3(inode, NFS_INO_INVALID_CHANGE
					| NFS_INO_INVALID_CTIME);
	}
	if (fattr->valid)
		FUNC4(inode, fattr);
	FUNC7(&inode->i_lock);
}