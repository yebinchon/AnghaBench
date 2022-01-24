#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_4__ {struct inode* ip; } ;
struct tblock {TYPE_1__ u; int /*<<< orphan*/  xflag; } ;
struct inode {int i_size; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct component_name {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_5__ {int flag; } ;
struct TYPE_6__ {int /*<<< orphan*/  commit_mutex; TYPE_2__ acl; TYPE_2__ ea; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_DELETE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  COMMIT_Stale ; 
 int DXD_EXTENT ; 
 int EIO ; 
 int ENOTEMPTY ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int FUNC5 (struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct component_name*) ; 
 int FUNC9 (struct component_name*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct inode*) ; 
 struct tblock* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct inode*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct inode *dip, struct dentry *dentry)
{
	int rc;
	tid_t tid;		/* transaction id */
	struct inode *ip = FUNC4(dentry);
	ino_t ino;
	struct component_name dname;
	struct inode *iplist[2];
	struct tblock *tblk;

	FUNC12("jfs_rmdir: dip:0x%p name:%pd", dip, dentry);

	/* Init inode for quota operations. */
	rc = FUNC5(dip);
	if (rc)
		goto out;
	rc = FUNC5(ip);
	if (rc)
		goto out;

	/* directory must be empty to be removed */
	if (!FUNC7(ip)) {
		rc = -ENOTEMPTY;
		goto out;
	}

	if ((rc = FUNC9(&dname, dentry))) {
		goto out;
	}

	tid = FUNC20(dip->i_sb, 0);

	FUNC15(&FUNC0(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC15(&FUNC0(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	iplist[0] = dip;
	iplist[1] = ip;

	tblk = FUNC18(tid);
	tblk->xflag |= COMMIT_DELETE;
	tblk->u.ip = ip;

	/*
	 * delete the entry of target directory from parent directory
	 */
	ino = ip->i_ino;
	if ((rc = FUNC6(tid, dip, &dname, &ino, JFS_REMOVE))) {
		FUNC11("jfs_rmdir: dtDelete returned %d", rc);
		if (rc == -EIO)
			FUNC19(tid, 1);
		FUNC23(tid);
		FUNC16(&FUNC0(ip)->commit_mutex);
		FUNC16(&FUNC0(dip)->commit_mutex);

		goto out2;
	}

	/* update parent directory's link count corresponding
	 * to ".." entry of the target directory deleted
	 */
	dip->i_ctime = dip->i_mtime = FUNC3(dip);
	FUNC10(dip);

	/*
	 * OS/2 could have created EA and/or ACL
	 */
	/* free EA from both persistent and working map */
	if (FUNC0(ip)->ea.flag & DXD_EXTENT) {
		/* free EA pages */
		FUNC22(tid, ip, &FUNC0(ip)->ea, NULL);
	}
	FUNC0(ip)->ea.flag = 0;

	/* free ACL from both persistent and working map */
	if (FUNC0(ip)->acl.flag & DXD_EXTENT) {
		/* free ACL pages */
		FUNC22(tid, ip, &FUNC0(ip)->acl, NULL);
	}
	FUNC0(ip)->acl.flag = 0;

	/* mark the target directory as deleted */
	FUNC2(ip);
	FUNC14(ip);

	rc = FUNC21(tid, 2, &iplist[0], 0);

	FUNC23(tid);

	FUNC16(&FUNC0(ip)->commit_mutex);
	FUNC16(&FUNC0(dip)->commit_mutex);

	/*
	 * Truncating the directory index table is not guaranteed.  It
	 * may need to be done iteratively
	 */
	if (FUNC17(COMMIT_Stale, dip)) {
		if (dip->i_size > 1)
			FUNC13(dip, 0);

		FUNC1(COMMIT_Stale, dip);
	}

      out2:
	FUNC8(&dname);

      out:
	FUNC12("jfs_rmdir: rc:%d", rc);
	return rc;
}