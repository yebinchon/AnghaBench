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
struct timespec {int dummy; } ;
struct nfs_fattr {int valid; int /*<<< orphan*/  size; int /*<<< orphan*/  pre_size; int /*<<< orphan*/  mtime; int /*<<< orphan*/  pre_mtime; int /*<<< orphan*/  ctime; int /*<<< orphan*/  pre_ctime; int /*<<< orphan*/  change_attr; int /*<<< orphan*/  pre_change_attr; } ;
struct inode {int /*<<< orphan*/  i_mode; void* i_mtime; void* i_ctime; } ;

/* Variables and functions */
 int NFS_ATTR_FATTR_CHANGE ; 
 int NFS_ATTR_FATTR_CTIME ; 
 int NFS_ATTR_FATTR_MTIME ; 
 int NFS_ATTR_FATTR_PRECHANGE ; 
 int NFS_ATTR_FATTR_PRECTIME ; 
 int NFS_ATTR_FATTR_PREMTIME ; 
 int NFS_ATTR_FATTR_PRESIZE ; 
 int NFS_ATTR_FATTR_SIZE ; 
 int /*<<< orphan*/  NFS_INO_INVALID_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct timespec FUNC8 (void*) ; 
 scalar_t__ FUNC9 (struct timespec*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct inode *inode, struct nfs_fattr *fattr)
{
	struct timespec ts;

	if ((fattr->valid & NFS_ATTR_FATTR_PRECHANGE)
			&& (fattr->valid & NFS_ATTR_FATTR_CHANGE)
			&& FUNC3(inode, fattr->pre_change_attr)) {
		FUNC4(inode, fattr->change_attr);
		if (FUNC0(inode->i_mode))
			FUNC6(inode, NFS_INO_INVALID_DATA);
	}
	/* If we have atomic WCC data, we may update some attributes */
	ts = FUNC8(inode->i_ctime);
	if ((fattr->valid & NFS_ATTR_FATTR_PRECTIME)
			&& (fattr->valid & NFS_ATTR_FATTR_CTIME)
			&& FUNC9(&ts, &fattr->pre_ctime)) {
		inode->i_ctime = FUNC10(fattr->ctime);
	}

	ts = FUNC8(inode->i_mtime);
	if ((fattr->valid & NFS_ATTR_FATTR_PREMTIME)
			&& (fattr->valid & NFS_ATTR_FATTR_MTIME)
			&& FUNC9(&ts, &fattr->pre_mtime)) {
		inode->i_mtime = FUNC10(fattr->mtime);
		if (FUNC0(inode->i_mode))
			FUNC6(inode, NFS_INO_INVALID_DATA);
	}
	if ((fattr->valid & NFS_ATTR_FATTR_PRESIZE)
			&& (fattr->valid & NFS_ATTR_FATTR_SIZE)
			&& FUNC1(inode) == FUNC7(fattr->pre_size)
			&& !FUNC5(inode)) {
		FUNC2(inode, FUNC7(fattr->size));
	}
}