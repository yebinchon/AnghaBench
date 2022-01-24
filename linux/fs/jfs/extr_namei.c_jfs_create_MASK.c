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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_4__ {int /*<<< orphan*/  ixpxd; } ;
struct tblock {TYPE_1__ u; int /*<<< orphan*/  ino; int /*<<< orphan*/  xflag; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; TYPE_2__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_6__ {int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  ixpxd; } ;
struct TYPE_5__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_CREATE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*) ; 
 int FUNC9 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct component_name*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct component_name*,struct dentry*) ; 
 struct inode* FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jfs_aops ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  jfs_file_inode_operations ; 
 int /*<<< orphan*/  jfs_file_operations ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 struct tblock* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct inode*) ; 

__attribute__((used)) static int FUNC27(struct inode *dip, struct dentry *dentry, umode_t mode,
		bool excl)
{
	int rc = 0;
	tid_t tid;		/* transaction id */
	struct inode *ip = NULL;	/* child directory inode */
	ino_t ino;
	struct component_name dname;	/* child directory name */
	struct btstack btstack;
	struct inode *iplist[2];
	struct tblock *tblk;

	FUNC15("jfs_create: dip:0x%p name:%pd", dip, dentry);

	rc = FUNC7(dip);
	if (rc)
		goto out1;

	/*
	 * search parent directory for entry/freespace
	 * (dtSearch() returns parent directory page pinned)
	 */
	if ((rc = FUNC12(&dname, dentry)))
		goto out1;

	/*
	 * Either iAlloc() or txBegin() may block.  Deadlock can occur if we
	 * block there while holding dtree page, so we allocate the inode &
	 * begin the transaction before we search the directory.
	 */
	ip = FUNC13(dip, mode);
	if (FUNC0(ip)) {
		rc = FUNC2(ip);
		goto out2;
	}

	tid = FUNC23(dip->i_sb, 0);

	FUNC19(&FUNC1(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC19(&FUNC1(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	rc = FUNC16(tid, ip, dip);
	if (rc)
		goto out3;

	rc = FUNC17(tid, ip, dip, &dentry->d_name);
	if (rc) {
		FUNC22(tid, 0);
		goto out3;
	}

	if ((rc = FUNC9(dip, &dname, &ino, &btstack, JFS_CREATE))) {
		FUNC14("jfs_create: dtSearch returned %d", rc);
		FUNC22(tid, 0);
		goto out3;
	}

	tblk = FUNC21(tid);
	tblk->xflag |= COMMIT_CREATE;
	tblk->ino = ip->i_ino;
	tblk->u.ixpxd = FUNC1(ip)->ixpxd;

	iplist[0] = dip;
	iplist[1] = ip;

	/*
	 * initialize the child XAD tree root in-line in inode
	 */
	FUNC26(tid, ip);

	/*
	 * create entry in parent directory for child directory
	 * (dtInsert() releases parent directory page)
	 */
	ino = ip->i_ino;
	if ((rc = FUNC8(tid, dip, &dname, &ino, &btstack))) {
		if (rc == -EIO) {
			FUNC14("jfs_create: dtInsert returned -EIO");
			FUNC22(tid, 1);	/* Marks Filesystem dirty */
		} else
			FUNC22(tid, 0);	/* Filesystem full */
		goto out3;
	}

	ip->i_op = &jfs_file_inode_operations;
	ip->i_fop = &jfs_file_operations;
	ip->i_mapping->a_ops = &jfs_aops;

	FUNC18(ip);

	dip->i_ctime = dip->i_mtime = FUNC4(dip);

	FUNC18(dip);

	rc = FUNC24(tid, 2, &iplist[0], 0);

      out3:
	FUNC25(tid);
	FUNC20(&FUNC1(ip)->commit_mutex);
	FUNC20(&FUNC1(dip)->commit_mutex);
	if (rc) {
		FUNC11(ip);
		FUNC3(ip);
		FUNC6(ip);
	} else {
		FUNC5(dentry, ip);
	}

      out2:
	FUNC10(&dname);

      out1:

	FUNC15("jfs_create: rc:%d", rc);
	return rc;
}