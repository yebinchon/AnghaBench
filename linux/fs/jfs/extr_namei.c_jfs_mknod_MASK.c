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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_2__ {int /*<<< orphan*/  ixpxd; } ;
struct tblock {TYPE_1__ u; int /*<<< orphan*/  ino; int /*<<< orphan*/  xflag; } ;
struct jfs_inode_info {int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  ixpxd; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_CREATE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 struct jfs_inode_info* FUNC1 (struct inode*) ; 
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
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jfs_file_inode_operations ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 struct tblock* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct inode *dir, struct dentry *dentry,
		umode_t mode, dev_t rdev)
{
	struct jfs_inode_info *jfs_ip;
	struct btstack btstack;
	struct component_name dname;
	ino_t ino;
	struct inode *ip;
	struct inode *iplist[2];
	int rc;
	tid_t tid;
	struct tblock *tblk;

	FUNC15("jfs_mknod: %pd", dentry);

	rc = FUNC7(dir);
	if (rc)
		goto out;

	if ((rc = FUNC12(&dname, dentry)))
		goto out;

	ip = FUNC13(dir, mode);
	if (FUNC0(ip)) {
		rc = FUNC2(ip);
		goto out1;
	}
	jfs_ip = FUNC1(ip);

	tid = FUNC24(dir->i_sb, 0);

	FUNC19(&FUNC1(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC19(&FUNC1(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	rc = FUNC16(tid, ip, dir);
	if (rc)
		goto out3;

	rc = FUNC17(tid, ip, dir, &dentry->d_name);
	if (rc) {
		FUNC23(tid, 0);
		goto out3;
	}

	if ((rc = FUNC9(dir, &dname, &ino, &btstack, JFS_CREATE))) {
		FUNC23(tid, 0);
		goto out3;
	}

	tblk = FUNC22(tid);
	tblk->xflag |= COMMIT_CREATE;
	tblk->ino = ip->i_ino;
	tblk->u.ixpxd = FUNC1(ip)->ixpxd;

	ino = ip->i_ino;
	if ((rc = FUNC8(tid, dir, &dname, &ino, &btstack))) {
		FUNC23(tid, 0);
		goto out3;
	}

	ip->i_op = &jfs_file_inode_operations;
	jfs_ip->dev = FUNC21(rdev);
	FUNC14(ip, ip->i_mode, rdev);

	FUNC18(ip);

	dir->i_ctime = dir->i_mtime = FUNC4(dir);

	FUNC18(dir);

	iplist[0] = dir;
	iplist[1] = ip;
	rc = FUNC25(tid, 2, iplist, 0);

      out3:
	FUNC26(tid);
	FUNC20(&FUNC1(ip)->commit_mutex);
	FUNC20(&FUNC1(dir)->commit_mutex);
	if (rc) {
		FUNC11(ip);
		FUNC3(ip);
		FUNC6(ip);
	} else {
		FUNC5(dentry, ip);
	}

      out1:
	FUNC10(&dname);

      out:
	FUNC15("jfs_mknod: returning %d", rc);
	return rc;
}