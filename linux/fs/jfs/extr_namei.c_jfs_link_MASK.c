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
typedef  int /*<<< orphan*/  tid_t ;
struct inode {void* i_mtime; void* i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 void* FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*) ; 
 int FUNC7 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct component_name*) ; 
 int FUNC9 (struct component_name*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct dentry *old_dentry,
	     struct inode *dir, struct dentry *dentry)
{
	int rc;
	tid_t tid;
	struct inode *ip = FUNC2(old_dentry);
	ino_t ino;
	struct component_name dname;
	struct btstack btstack;
	struct inode *iplist[2];

	FUNC13("jfs_link: %pd %pd", old_dentry, dentry);

	rc = FUNC4(dir);
	if (rc)
		goto out;

	tid = FUNC17(ip->i_sb, 0);

	FUNC15(&FUNC0(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC15(&FUNC0(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	/*
	 * scan parent directory for entry/freespace
	 */
	if ((rc = FUNC9(&dname, dentry)))
		goto out_tx;

	if ((rc = FUNC7(dir, &dname, &ino, &btstack, JFS_CREATE)))
		goto free_dname;

	/*
	 * create entry for new link in parent directory
	 */
	ino = ip->i_ino;
	if ((rc = FUNC6(tid, dir, &dname, &ino, &btstack)))
		goto free_dname;

	/* update object inode */
	FUNC11(ip);		/* for new link */
	ip->i_ctime = FUNC1(ip);
	dir->i_ctime = dir->i_mtime = FUNC1(dir);
	FUNC14(dir);
	FUNC10(ip);

	iplist[0] = ip;
	iplist[1] = dir;
	rc = FUNC18(tid, 2, &iplist[0], 0);

	if (rc) {
		FUNC5(ip); /* never instantiated */
		FUNC12(ip);
	} else
		FUNC3(dentry, ip);

      free_dname:
	FUNC8(&dname);

      out_tx:
	FUNC19(tid);

	FUNC16(&FUNC0(ip)->commit_mutex);
	FUNC16(&FUNC0(dir)->commit_mutex);

      out:
	FUNC13("jfs_link: rc:%d", rc);
	return rc;
}