#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_quota_types; int s_time_gran; scalar_t__ s_blocksize; int /*<<< orphan*/  s_maxbytes; int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/  s_magic; TYPE_1__* s_bdev; int /*<<< orphan*/ * s_qcop; int /*<<< orphan*/ * dq_op; int /*<<< orphan*/  s_xattr; int /*<<< orphan*/ * s_export_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_time_max; scalar_t__ s_time_min; int /*<<< orphan*/  s_max_links; struct jfs_sb_info* s_fs_info; } ;
struct jfs_sb_info {int umask; int flag; int mntflag; int /*<<< orphan*/  nls_tab; struct inode* direct_inode; int /*<<< orphan*/ * log; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; struct super_block* sb; } ;
struct inode {TYPE_2__* i_mapping; int /*<<< orphan*/  i_size; scalar_t__ i_ino; } ;
typedef  scalar_t__ s64 ;
typedef  int loff_t ;
struct TYPE_6__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  INVALID_GID ; 
 int /*<<< orphan*/  INVALID_UID ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int JFS_ERR_REMOUNT_RO ; 
 int /*<<< orphan*/  JFS_LINK_MAX ; 
 int JFS_OS2 ; 
 int /*<<< orphan*/  JFS_SUPER_MAGIC ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  PSIZE ; 
 int FUNC1 (struct inode*) ; 
 int QTYPE_MASK_GRP ; 
 int QTYPE_MASK_USR ; 
 int /*<<< orphan*/  ROOT_I ; 
 int /*<<< orphan*/  SB_POSIXACL ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  dquot_operations ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  jfs_ci_dentry_operations ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  jfs_export_operations ; 
 struct inode* FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jfs_metapage_aops ; 
 int FUNC10 (struct super_block*) ; 
 int FUNC11 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jfs_quotactl_ops ; 
 int /*<<< orphan*/  jfs_super_operations ; 
 int FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  jfs_xattr_handlers ; 
 int /*<<< orphan*/  FUNC13 (struct jfs_sb_info*) ; 
 struct jfs_sb_info* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 struct inode* FUNC18 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC19 (char*,struct super_block*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 scalar_t__ FUNC21 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct super_block *sb, void *data, int silent)
{
	struct jfs_sb_info *sbi;
	struct inode *inode;
	int rc;
	s64 newLVSize = 0;
	int flag, ret = -EINVAL;

	FUNC9("In jfs_read_super: s_flags=0x%lx", sb->s_flags);

	sbi = FUNC14(sizeof(struct jfs_sb_info), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;

	sb->s_fs_info = sbi;
	sb->s_max_links = JFS_LINK_MAX;
	sb->s_time_min = 0;
	sb->s_time_max = U32_MAX;
	sbi->sb = sb;
	sbi->uid = INVALID_UID;
	sbi->gid = INVALID_GID;
	sbi->umask = -1;

	/* initialize the mount flag and determine the default error handler */
	flag = JFS_ERR_REMOUNT_RO;

	if (!FUNC19((char *) data, sb, &newLVSize, &flag))
		goto out_kfree;
	sbi->flag = flag;

#ifdef CONFIG_JFS_POSIX_ACL
	sb->s_flags |= SB_POSIXACL;
#endif

	if (newLVSize) {
		FUNC20("resize option for remount only\n");
		goto out_kfree;
	}

	/*
	 * Initialize blocksize to 4K.
	 */
	FUNC22(sb, PSIZE);

	/*
	 * Set method vectors.
	 */
	sb->s_op = &jfs_super_operations;
	sb->s_export_op = &jfs_export_operations;
	sb->s_xattr = jfs_xattr_handlers;
#ifdef CONFIG_QUOTA
	sb->dq_op = &dquot_operations;
	sb->s_qcop = &jfs_quotactl_ops;
	sb->s_quota_types = QTYPE_MASK_USR | QTYPE_MASK_GRP;
#endif

	/*
	 * Initialize direct-mapping inode/address-space
	 */
	inode = FUNC18(sb);
	if (inode == NULL) {
		ret = -ENOMEM;
		goto out_unload;
	}
	inode->i_ino = 0;
	inode->i_size = FUNC4(sb->s_bdev->bd_inode);
	inode->i_mapping->a_ops = &jfs_metapage_aops;
	FUNC5(inode);
	FUNC16(inode->i_mapping, GFP_NOFS);

	sbi->direct_inode = inode;

	rc = FUNC10(sb);
	if (rc) {
		if (!silent)
			FUNC7("jfs_mount failed w/return code = %d", rc);
		goto out_mount_failed;
	}
	if (FUNC21(sb))
		sbi->log = NULL;
	else {
		rc = FUNC11(sb, 0);
		if (rc) {
			if (!silent) {
				FUNC7("jfs_mount_rw failed, return code = %d",
					rc);
			}
			goto out_no_rw;
		}
	}

	sb->s_magic = JFS_SUPER_MAGIC;

	if (sbi->mntflag & JFS_OS2)
		sb->s_d_op = &jfs_ci_dentry_operations;

	inode = FUNC8(sb, ROOT_I);
	if (FUNC0(inode)) {
		ret = FUNC1(inode);
		goto out_no_rw;
	}
	sb->s_root = FUNC2(inode);
	if (!sb->s_root)
		goto out_no_root;

	/* logical blocks are represented by 40 bits in pxd_t, etc.
	 * and page cache is indexed by long
	 */
	sb->s_maxbytes = FUNC17(((loff_t)sb->s_blocksize) << 40, MAX_LFS_FILESIZE);
	sb->s_time_gran = 1;
	return 0;

out_no_root:
	FUNC7("jfs_read_super: get root dentry failed");

out_no_rw:
	rc = FUNC12(sb);
	if (rc)
		FUNC7("jfs_umount failed with return code %d", rc);
out_mount_failed:
	FUNC3(sbi->direct_inode->i_mapping);
	FUNC23(sbi->direct_inode->i_mapping, 0);
	FUNC15(sbi->direct_inode);
	FUNC6(sbi->direct_inode);
	sbi->direct_inode = NULL;
out_unload:
	FUNC24(sbi->nls_tab);
out_kfree:
	FUNC13(sbi);
	return ret;
}