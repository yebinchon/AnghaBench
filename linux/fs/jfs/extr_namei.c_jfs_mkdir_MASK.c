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
typedef  int umode_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_3__ {int /*<<< orphan*/  ixpxd; } ;
struct tblock {TYPE_1__ u; int /*<<< orphan*/  ino; int /*<<< orphan*/  xflag; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_4__ {int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  ixpxd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_CREATE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*) ; 
 int FUNC10 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct component_name*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (struct component_name*,struct dentry*) ; 
 struct inode* FUNC14 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  jfs_dir_inode_operations ; 
 int /*<<< orphan*/  jfs_dir_operations ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,int) ; 
 struct tblock* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct inode *dip, struct dentry *dentry, umode_t mode)
{
	int rc = 0;
	tid_t tid;		/* transaction id */
	struct inode *ip = NULL;	/* child directory inode */
	ino_t ino;
	struct component_name dname;	/* child directory name */
	struct btstack btstack;
	struct inode *iplist[2];
	struct tblock *tblk;

	FUNC17("jfs_mkdir: dip:0x%p name:%pd", dip, dentry);

	rc = FUNC7(dip);
	if (rc)
		goto out1;

	/*
	 * search parent directory for entry/freespace
	 * (dtSearch() returns parent directory page pinned)
	 */
	if ((rc = FUNC13(&dname, dentry)))
		goto out1;

	/*
	 * Either iAlloc() or txBegin() may block.  Deadlock can occur if we
	 * block there while holding dtree page, so we allocate the inode &
	 * begin the transaction before we search the directory.
	 */
	ip = FUNC14(dip, S_IFDIR | mode);
	if (FUNC0(ip)) {
		rc = FUNC2(ip);
		goto out2;
	}

	tid = FUNC26(dip->i_sb, 0);

	FUNC21(&FUNC1(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC21(&FUNC1(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	rc = FUNC18(tid, ip, dip);
	if (rc)
		goto out3;

	rc = FUNC19(tid, ip, dip, &dentry->d_name);
	if (rc) {
		FUNC25(tid, 0);
		goto out3;
	}

	if ((rc = FUNC10(dip, &dname, &ino, &btstack, JFS_CREATE))) {
		FUNC16("jfs_mkdir: dtSearch returned %d", rc);
		FUNC25(tid, 0);
		goto out3;
	}

	tblk = FUNC24(tid);
	tblk->xflag |= COMMIT_CREATE;
	tblk->ino = ip->i_ino;
	tblk->u.ixpxd = FUNC1(ip)->ixpxd;

	iplist[0] = dip;
	iplist[1] = ip;

	/*
	 * initialize the child directory in-line in inode
	 */
	FUNC8(tid, ip, dip->i_ino);

	/*
	 * create entry in parent directory for child directory
	 * (dtInsert() releases parent directory page)
	 */
	ino = ip->i_ino;
	if ((rc = FUNC9(tid, dip, &dname, &ino, &btstack))) {
		if (rc == -EIO) {
			FUNC16("jfs_mkdir: dtInsert returned -EIO");
			FUNC25(tid, 1);	/* Marks Filesystem dirty */
		} else
			FUNC25(tid, 0);	/* Filesystem full */
		goto out3;
	}

	FUNC23(ip, 2);	/* for '.' */
	ip->i_op = &jfs_dir_inode_operations;
	ip->i_fop = &jfs_dir_operations;

	FUNC20(ip);

	/* update parent directory inode */
	FUNC15(dip);		/* for '..' from child directory */
	dip->i_ctime = dip->i_mtime = FUNC4(dip);
	FUNC20(dip);

	rc = FUNC27(tid, 2, &iplist[0], 0);

      out3:
	FUNC28(tid);
	FUNC22(&FUNC1(ip)->commit_mutex);
	FUNC22(&FUNC1(dip)->commit_mutex);
	if (rc) {
		FUNC12(ip);
		FUNC3(ip);
		FUNC6(ip);
	} else {
		FUNC5(dentry, ip);
	}

      out2:
	FUNC11(&dname);


      out1:

	FUNC17("jfs_mkdir: rc:%d", rc);
	return rc;
}