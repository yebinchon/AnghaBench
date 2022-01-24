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
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_3__ {struct inode* ip; } ;
struct tblock {TYPE_1__ u; int /*<<< orphan*/  xflag; } ;
struct inode {scalar_t__ i_nlink; int i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;
struct component_name {int dummy; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_4__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  COMMIT_DELETE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  COMMIT_Nolink ; 
 int COMMIT_SYNC ; 
 int /*<<< orphan*/  COMMIT_Stale ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  JFS_REMOVE ; 
 int /*<<< orphan*/  RDWRLOCK_NORMAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 int FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct component_name*) ; 
 int FUNC12 (struct component_name*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct inode*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,struct inode*) ; 
 struct tblock* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ,int,struct inode**,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ ,struct inode*,int) ; 

__attribute__((used)) static int FUNC29(struct inode *dip, struct dentry *dentry)
{
	int rc;
	tid_t tid;		/* transaction id */
	struct inode *ip = FUNC8(dentry);
	ino_t ino;
	struct component_name dname;	/* object name */
	struct inode *iplist[2];
	struct tblock *tblk;
	s64 new_size = 0;
	int commit_flag;

	FUNC15("jfs_unlink: dip:0x%p name:%pd", dip, dentry);

	/* Init inode for quota operations. */
	rc = FUNC9(dip);
	if (rc)
		goto out;
	rc = FUNC9(ip);
	if (rc)
		goto out;

	if ((rc = FUNC12(&dname, dentry)))
		goto out;

	FUNC1(ip, RDWRLOCK_NORMAL);

	tid = FUNC25(dip->i_sb, 0);

	FUNC19(&FUNC3(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC19(&FUNC3(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	iplist[0] = dip;
	iplist[1] = ip;

	/*
	 * delete the entry of target file from parent directory
	 */
	ino = ip->i_ino;
	if ((rc = FUNC10(tid, dip, &dname, &ino, JFS_REMOVE))) {
		FUNC14("jfs_unlink: dtDelete returned %d", rc);
		if (rc == -EIO)
			FUNC24(tid, 1);	/* Marks FS Dirty */
		FUNC27(tid);
		FUNC20(&FUNC3(ip)->commit_mutex);
		FUNC20(&FUNC3(dip)->commit_mutex);
		FUNC2(ip);
		goto out1;
	}

	FUNC0(ip->i_nlink);

	ip->i_ctime = dip->i_ctime = dip->i_mtime = FUNC7(ip);
	FUNC17(dip);

	/* update target's inode */
	FUNC13(ip);

	/*
	 *	commit zero link count object
	 */
	if (ip->i_nlink == 0) {
		FUNC4(!FUNC22(COMMIT_Nolink, ip));
		/* free block resources */
		if ((new_size = FUNC6(tid, ip)) < 0) {
			FUNC24(tid, 1);	/* Marks FS Dirty */
			FUNC27(tid);
			FUNC20(&FUNC3(ip)->commit_mutex);
			FUNC20(&FUNC3(dip)->commit_mutex);
			FUNC2(ip);
			rc = new_size;
			goto out1;
		}
		tblk = FUNC23(tid);
		tblk->xflag |= COMMIT_DELETE;
		tblk->u.ip = ip;
	}

	/*
	 * Incomplete truncate of file data can
	 * result in timing problems unless we synchronously commit the
	 * transaction.
	 */
	if (new_size)
		commit_flag = COMMIT_SYNC;
	else
		commit_flag = 0;

	/*
	 * If xtTruncate was incomplete, commit synchronously to avoid
	 * timing complications
	 */
	rc = FUNC26(tid, 2, &iplist[0], commit_flag);

	FUNC27(tid);

	FUNC20(&FUNC3(ip)->commit_mutex);
	FUNC20(&FUNC3(dip)->commit_mutex);

	while (new_size && (rc == 0)) {
		tid = FUNC25(dip->i_sb, 0);
		FUNC18(&FUNC3(ip)->commit_mutex);
		new_size = FUNC28(tid, ip, new_size);
		if (new_size < 0) {
			FUNC24(tid, 1);	/* Marks FS Dirty */
			rc = new_size;
		} else
			rc = FUNC26(tid, 2, &iplist[0], COMMIT_SYNC);
		FUNC27(tid);
		FUNC20(&FUNC3(ip)->commit_mutex);
	}

	if (ip->i_nlink == 0)
		FUNC21(COMMIT_Nolink, ip);

	FUNC2(ip);

	/*
	 * Truncating the directory index table is not guaranteed.  It
	 * may need to be done iteratively
	 */
	if (FUNC22(COMMIT_Stale, dip)) {
		if (dip->i_size > 1)
			FUNC16(dip, 0);

		FUNC5(COMMIT_Stale, dip);
	}

      out1:
	FUNC11(&dname);
      out:
	FUNC15("jfs_unlink: rc:%d", rc);
	return rc;
}