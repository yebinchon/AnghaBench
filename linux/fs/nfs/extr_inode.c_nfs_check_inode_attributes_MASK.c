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
struct timespec {int dummy; } ;
struct nfs_inode {scalar_t__ fileid; int /*<<< orphan*/  read_cache_jiffies; } ;
struct nfs_fattr {int valid; scalar_t__ fileid; scalar_t__ mounted_on_fileid; int mode; scalar_t__ nlink; int /*<<< orphan*/  time_start; int /*<<< orphan*/  atime; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  size; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  change_attr; } ;
struct inode {int i_mode; scalar_t__ i_nlink; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ (* have_delegation ) (struct inode*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ESTALE ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int NFS_ATTR_FATTR_ATIME ; 
 int NFS_ATTR_FATTR_CHANGE ; 
 int NFS_ATTR_FATTR_CTIME ; 
 int NFS_ATTR_FATTR_FILEID ; 
 int NFS_ATTR_FATTR_GROUP ; 
 int NFS_ATTR_FATTR_MODE ; 
 int NFS_ATTR_FATTR_MOUNTED_ON_FILEID ; 
 int NFS_ATTR_FATTR_MTIME ; 
 int NFS_ATTR_FATTR_NLINK ; 
 int NFS_ATTR_FATTR_OWNER ; 
 int NFS_ATTR_FATTR_SIZE ; 
 int NFS_ATTR_FATTR_TYPE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 unsigned long NFS_INO_INVALID_ACCESS ; 
 unsigned long NFS_INO_INVALID_ACL ; 
 unsigned long NFS_INO_INVALID_ATIME ; 
 unsigned long NFS_INO_INVALID_CHANGE ; 
 unsigned long NFS_INO_INVALID_CTIME ; 
 unsigned long NFS_INO_INVALID_MTIME ; 
 unsigned long NFS_INO_INVALID_OTHER ; 
 unsigned long NFS_INO_INVALID_SIZE ; 
 unsigned long NFS_INO_REVAL_PAGECACHE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int S_IALLUGO ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 struct timespec FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, struct nfs_fattr *fattr)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	loff_t cur_size, new_isize;
	unsigned long invalid = 0;
	struct timespec ts;

	if (FUNC1(inode)->have_delegation(inode, FMODE_READ))
		return 0;

	if (!(fattr->valid & NFS_ATTR_FATTR_FILEID)) {
		/* Only a mounted-on-fileid? Just exit */
		if (fattr->valid & NFS_ATTR_FATTR_MOUNTED_ON_FILEID)
			return 0;
	/* Has the inode gone and changed behind our back? */
	} else if (nfsi->fileid != fattr->fileid) {
		/* Is this perhaps the mounted-on fileid? */
		if ((fattr->valid & NFS_ATTR_FATTR_MOUNTED_ON_FILEID) &&
		    nfsi->fileid == fattr->mounted_on_fileid)
			return 0;
		return -ESTALE;
	}
	if ((fattr->valid & NFS_ATTR_FATTR_TYPE) && (inode->i_mode & S_IFMT) != (fattr->mode & S_IFMT))
		return -ESTALE;


	if (!FUNC5(nfsi)) {
		/* Verify a few of the more important attributes */
		if ((fattr->valid & NFS_ATTR_FATTR_CHANGE) != 0 && !FUNC4(inode, fattr->change_attr))
			invalid |= NFS_INO_INVALID_CHANGE
				| NFS_INO_REVAL_PAGECACHE;

		ts = FUNC9(inode->i_mtime);
		if ((fattr->valid & NFS_ATTR_FATTR_MTIME) && !FUNC10(&ts, &fattr->mtime))
			invalid |= NFS_INO_INVALID_MTIME;

		ts = FUNC9(inode->i_ctime);
		if ((fattr->valid & NFS_ATTR_FATTR_CTIME) && !FUNC10(&ts, &fattr->ctime))
			invalid |= NFS_INO_INVALID_CTIME;

		if (fattr->valid & NFS_ATTR_FATTR_SIZE) {
			cur_size = FUNC3(inode);
			new_isize = FUNC7(fattr->size);
			if (cur_size != new_isize)
				invalid |= NFS_INO_INVALID_SIZE
					| NFS_INO_REVAL_PAGECACHE;
		}
	}

	/* Have any file permissions changed? */
	if ((fattr->valid & NFS_ATTR_FATTR_MODE) && (inode->i_mode & S_IALLUGO) != (fattr->mode & S_IALLUGO))
		invalid |= NFS_INO_INVALID_ACCESS
			| NFS_INO_INVALID_ACL
			| NFS_INO_INVALID_OTHER;
	if ((fattr->valid & NFS_ATTR_FATTR_OWNER) && !FUNC11(inode->i_uid, fattr->uid))
		invalid |= NFS_INO_INVALID_ACCESS
			| NFS_INO_INVALID_ACL
			| NFS_INO_INVALID_OTHER;
	if ((fattr->valid & NFS_ATTR_FATTR_GROUP) && !FUNC2(inode->i_gid, fattr->gid))
		invalid |= NFS_INO_INVALID_ACCESS
			| NFS_INO_INVALID_ACL
			| NFS_INO_INVALID_OTHER;

	/* Has the link count changed? */
	if ((fattr->valid & NFS_ATTR_FATTR_NLINK) && inode->i_nlink != fattr->nlink)
		invalid |= NFS_INO_INVALID_OTHER;

	ts = FUNC9(inode->i_atime);
	if ((fattr->valid & NFS_ATTR_FATTR_ATIME) && !FUNC10(&ts, &fattr->atime))
		invalid |= NFS_INO_INVALID_ATIME;

	if (invalid != 0)
		FUNC6(inode, invalid);

	nfsi->read_cache_jiffies = fattr->time_start;
	return 0;
}