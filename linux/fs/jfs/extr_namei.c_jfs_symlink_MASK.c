#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_5__ {int /*<<< orphan*/  ixpxd; } ;
struct tblock {TYPE_1__ u; int /*<<< orphan*/  ino; int /*<<< orphan*/  xflag; } ;
struct super_block {int dummy; } ;
struct metapage {int /*<<< orphan*/  data; } ;
struct inode {int i_mode; int i_size; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; struct super_block* i_sb; TYPE_2__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_link; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_8__ {int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  mode2; int /*<<< orphan*/  i_inline; int /*<<< orphan*/  ixpxd; } ;
struct TYPE_7__ {int bsize; int l2bsize; scalar_t__ nbperpage; } ;
struct TYPE_6__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_CREATE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  COMMIT_PWMAP ; 
 int EIO ; 
 int IDATASIZE ; 
 int /*<<< orphan*/  INLINEEA ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 TYPE_3__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  PSIZE ; 
 int FUNC3 (struct inode*) ; 
 int S_IFLNK ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*) ; 
 int FUNC11 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC13 (struct component_name*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int FUNC15 (struct component_name*,struct dentry*) ; 
 struct metapage* FUNC16 (struct inode*,int,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC17 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  jfs_aops ; 
 int /*<<< orphan*/  jfs_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int FUNC20 (int /*<<< orphan*/ ,struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jfs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (char const*) ; 
 struct tblock* FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC33 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC35(struct inode *dip, struct dentry *dentry,
		const char *name)
{
	int rc;
	tid_t tid;
	ino_t ino = 0;
	struct component_name dname;
	int ssize;		/* source pathname size */
	struct btstack btstack;
	struct inode *ip = FUNC6(dentry);
	s64 xlen = 0;
	int bmask = 0, xsize;
	s64 xaddr;
	struct metapage *mp;
	struct super_block *sb;
	struct tblock *tblk;

	struct inode *iplist[2];

	FUNC19("jfs_symlink: dip:0x%p name:%s", dip, name);

	rc = FUNC9(dip);
	if (rc)
		goto out1;

	ssize = FUNC26(name) + 1;

	/*
	 * search parent directory for entry/freespace
	 * (dtSearch() returns parent directory page pinned)
	 */

	if ((rc = FUNC15(&dname, dentry)))
		goto out1;

	/*
	 * allocate on-disk/in-memory inode for symbolic link:
	 * (iAlloc() returns new, locked inode)
	 */
	ip = FUNC17(dip, S_IFLNK | 0777);
	if (FUNC0(ip)) {
		rc = FUNC3(ip);
		goto out2;
	}

	tid = FUNC29(dip->i_sb, 0);

	FUNC24(&FUNC1(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC24(&FUNC1(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	rc = FUNC20(tid, ip, dip, &dentry->d_name);
	if (rc)
		goto out3;

	tblk = FUNC27(tid);
	tblk->xflag |= COMMIT_CREATE;
	tblk->ino = ip->i_ino;
	tblk->u.ixpxd = FUNC1(ip)->ixpxd;

	/* fix symlink access permission
	 * (dir_create() ANDs in the u.u_cmask,
	 * but symlinks really need to be 777 access)
	 */
	ip->i_mode |= 0777;

	/*
	 * write symbolic link target path name
	 */
	FUNC32(tid, ip);

	/*
	 * write source path name inline in on-disk inode (fast symbolic link)
	 */

	if (ssize <= IDATASIZE) {
		ip->i_op = &jfs_fast_symlink_inode_operations;

		ip->i_link = FUNC1(ip)->i_inline;
		FUNC22(ip->i_link, name, ssize);
		ip->i_size = ssize - 1;

		/*
		 * if symlink is > 128 bytes, we don't have the space to
		 * store inline extended attributes
		 */
		if (ssize > sizeof (FUNC1(ip)->i_inline))
			FUNC1(ip)->mode2 &= ~INLINEEA;

		FUNC19("jfs_symlink: fast symlink added  ssize:%d name:%s ",
			 ssize, name);
	}
	/*
	 * write source path name in a single extent
	 */
	else {
		FUNC19("jfs_symlink: allocate extent ip:0x%p", ip);

		ip->i_op = &jfs_symlink_inode_operations;
		FUNC18(ip);
		ip->i_mapping->a_ops = &jfs_aops;

		/*
		 * even though the data of symlink object (source
		 * path name) is treated as non-journaled user data,
		 * it is read/written thru buffer cache for performance.
		 */
		sb = ip->i_sb;
		bmask = FUNC2(sb)->bsize - 1;
		xsize = (ssize + bmask) & ~bmask;
		xaddr = 0;
		xlen = xsize >> FUNC2(sb)->l2bsize;
		if ((rc = FUNC33(tid, ip, 0, 0, xlen, &xaddr, 0))) {
			FUNC28(tid, 0);
			goto out3;
		}
		ip->i_size = ssize - 1;
		while (ssize) {
			/* This is kind of silly since PATH_MAX == 4K */
			int copy_size = FUNC23(ssize, PSIZE);

			mp = FUNC16(ip, xaddr, PSIZE, 1);

			if (mp == NULL) {
				FUNC34(tid, ip, 0, COMMIT_PWMAP);
				rc = -EIO;
				FUNC28(tid, 0);
				goto out3;
			}
			FUNC22(mp->data, name, copy_size);
			FUNC12(mp);
			ssize -= copy_size;
			name += copy_size;
			xaddr += FUNC2(sb)->nbperpage;
		}
	}

	/*
	 * create entry for symbolic link in parent directory
	 */
	rc = FUNC11(dip, &dname, &ino, &btstack, JFS_CREATE);
	if (rc == 0) {
		ino = ip->i_ino;
		rc = FUNC10(tid, dip, &dname, &ino, &btstack);
	}
	if (rc) {
		if (xlen)
			FUNC34(tid, ip, 0, COMMIT_PWMAP);
		FUNC28(tid, 0);
		/* discard new inode */
		goto out3;
	}

	FUNC21(ip);

	dip->i_ctime = dip->i_mtime = FUNC5(dip);
	FUNC21(dip);
	/*
	 * commit update of parent directory and link object
	 */

	iplist[0] = dip;
	iplist[1] = ip;
	rc = FUNC30(tid, 2, &iplist[0], 0);

      out3:
	FUNC31(tid);
	FUNC25(&FUNC1(ip)->commit_mutex);
	FUNC25(&FUNC1(dip)->commit_mutex);
	if (rc) {
		FUNC14(ip);
		FUNC4(ip);
		FUNC8(ip);
	} else {
		FUNC7(dentry, ip);
	}

      out2:
	FUNC13(&dname);

      out1:
	FUNC19("jfs_symlink: rc:%d", rc);
	return rc;
}