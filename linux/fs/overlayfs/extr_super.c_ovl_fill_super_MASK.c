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
struct super_block {struct dentry* s_root; int /*<<< orphan*/  s_flags; struct ovl_fs* s_fs_info; int /*<<< orphan*/  s_xattr; int /*<<< orphan*/  s_magic; int /*<<< orphan*/ * s_export_op; int /*<<< orphan*/  s_time_gran; int /*<<< orphan*/  s_stack_depth; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_maxbytes; } ;
struct path {scalar_t__ dentry; int /*<<< orphan*/  mnt; } ;
struct TYPE_6__ {int index; int nfs_export; scalar_t__ xino; scalar_t__ metacopy; int /*<<< orphan*/  workdir; scalar_t__ upperdir; int /*<<< orphan*/  lowerdir; } ;
struct ovl_fs {TYPE_3__ config; TYPE_2__* upper_mnt; int /*<<< orphan*/  indexdir; int /*<<< orphan*/ * workdir; scalar_t__ xino_bits; struct cred* creator_cred; } ;
struct ovl_entry {int dummy; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;
struct cred {int /*<<< orphan*/  cap_effective; } ;
struct TYPE_5__ {TYPE_1__* mnt_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_time_gran; int /*<<< orphan*/  s_stack_depth; } ;

/* Variables and functions */
 scalar_t__ BITS_PER_LONG ; 
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ovl_entry*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  OVERLAYFS_SUPER_MAGIC ; 
 int /*<<< orphan*/  OVL_E_CONNECTED ; 
 int /*<<< orphan*/  OVL_IMPURE ; 
 int /*<<< orphan*/  OVL_WHITEOUTS ; 
 scalar_t__ OVL_XINO_OFF ; 
 int FUNC1 (struct ovl_entry*) ; 
 int /*<<< orphan*/  SB_POSIXACL ; 
 int /*<<< orphan*/  SB_RDONLY ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ovl_entry*) ; 
 struct ovl_fs* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct super_block*,struct ovl_fs*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (struct ovl_entry*) ; 
 int /*<<< orphan*/  ovl_export_operations ; 
 int /*<<< orphan*/  FUNC14 (struct ovl_fs*) ; 
 int /*<<< orphan*/  FUNC15 (struct ovl_fs*) ; 
 int FUNC16 (struct super_block*,struct ovl_fs*,struct ovl_entry*,struct path*) ; 
 struct ovl_entry* FUNC17 (struct super_block*,struct ovl_fs*) ; 
 int FUNC18 (struct super_block*,struct ovl_fs*,struct path*) ; 
 int FUNC19 (struct super_block*,struct ovl_fs*,struct path*) ; 
 int ovl_index_def ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ ovl_metacopy_def ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ovl_nfs_export_def ; 
 int FUNC23 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ovl_super_operations ; 
 int /*<<< orphan*/  ovl_xattr_handlers ; 
 scalar_t__ FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (struct path*) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 struct cred* FUNC30 () ; 

__attribute__((used)) static int FUNC31(struct super_block *sb, void *data, int silent)
{
	struct path upperpath = { };
	struct dentry *root_dentry;
	struct ovl_entry *oe;
	struct ovl_fs *ofs;
	struct cred *cred;
	int err;

	err = -ENOMEM;
	ofs = FUNC7(sizeof(struct ovl_fs), GFP_KERNEL);
	if (!ofs)
		goto out;

	ofs->creator_cred = cred = FUNC30();
	if (!cred)
		goto out_err;

	ofs->config.index = ovl_index_def;
	ofs->config.nfs_export = ovl_nfs_export_def;
	ofs->config.xino = FUNC26();
	ofs->config.metacopy = ovl_metacopy_def;
	err = FUNC23((char *) data, &ofs->config);
	if (err)
		goto out_err;

	err = -EINVAL;
	if (!ofs->config.lowerdir) {
		if (!silent)
			FUNC28("overlayfs: missing 'lowerdir'\n");
		goto out_err;
	}

	sb->s_stack_depth = 0;
	sb->s_maxbytes = MAX_LFS_FILESIZE;
	/* Assume underlaying fs uses 32bit inodes unless proven otherwise */
	if (ofs->config.xino != OVL_XINO_OFF)
		ofs->xino_bits = BITS_PER_LONG - 32;

	/* alloc/destroy_inode needed for setting up traps in inode cache */
	sb->s_op = &ovl_super_operations;

	if (ofs->config.upperdir) {
		if (!ofs->config.workdir) {
			FUNC28("overlayfs: missing 'workdir'\n");
			goto out_err;
		}

		err = FUNC18(sb, ofs, &upperpath);
		if (err)
			goto out_err;

		err = FUNC19(sb, ofs, &upperpath);
		if (err)
			goto out_err;

		if (!ofs->workdir)
			sb->s_flags |= SB_RDONLY;

		sb->s_stack_depth = ofs->upper_mnt->mnt_sb->s_stack_depth;
		sb->s_time_gran = ofs->upper_mnt->mnt_sb->s_time_gran;

	}
	oe = FUNC17(sb, ofs);
	err = FUNC1(oe);
	if (FUNC0(oe))
		goto out_err;

	/* If the upper fs is nonexistent, we mark overlayfs r/o too */
	if (!ofs->upper_mnt)
		sb->s_flags |= SB_RDONLY;

	if (!(FUNC14(ofs)) && ofs->config.index) {
		err = FUNC16(sb, ofs, oe, &upperpath);
		if (err)
			goto out_free_oe;

		/* Force r/o mount with no index dir */
		if (!ofs->indexdir) {
			FUNC5(ofs->workdir);
			ofs->workdir = NULL;
			sb->s_flags |= SB_RDONLY;
		}

	}

	err = FUNC9(sb, ofs);
	if (err)
		goto out_free_oe;

	/* Show index=off in /proc/mounts for forced r/o mount */
	if (!ofs->indexdir) {
		ofs->config.index = false;
		if (ofs->upper_mnt && ofs->config.nfs_export) {
			FUNC29("overlayfs: NFS export requires an index dir, falling back to nfs_export=off.\n");
			ofs->config.nfs_export = false;
		}
	}

	if (ofs->config.metacopy && ofs->config.nfs_export) {
		FUNC29("overlayfs: NFS export is not supported with metadata only copy up, falling back to nfs_export=off.\n");
		ofs->config.nfs_export = false;
	}

	if (ofs->config.nfs_export)
		sb->s_export_op = &ovl_export_operations;

	/* Never override disk quota limits or use reserved space */
	FUNC2(cred->cap_effective, CAP_SYS_RESOURCE);

	sb->s_magic = OVERLAYFS_SUPER_MAGIC;
	sb->s_xattr = ovl_xattr_handlers;
	sb->s_fs_info = ofs;
	sb->s_flags |= SB_POSIXACL;

	err = -ENOMEM;
	root_dentry = FUNC4(FUNC22(sb, S_IFDIR, 0));
	if (!root_dentry)
		goto out_free_oe;

	root_dentry->d_fsdata = oe;

	FUNC8(upperpath.mnt);
	if (upperpath.dentry) {
		FUNC12(root_dentry);
		if (FUNC21(upperpath.dentry))
			FUNC24(OVL_IMPURE, FUNC3(root_dentry));
	}

	/* Root is always merge -> can have whiteouts */
	FUNC24(OVL_WHITEOUTS, FUNC3(root_dentry));
	FUNC11(OVL_E_CONNECTED, root_dentry);
	FUNC25(FUNC3(root_dentry));
	FUNC20(FUNC3(root_dentry), upperpath.dentry,
		       FUNC10(root_dentry), NULL);

	sb->s_root = root_dentry;

	return 0;

out_free_oe:
	FUNC13(oe);
	FUNC6(oe);
out_err:
	FUNC27(&upperpath);
	FUNC15(ofs);
out:
	return err;
}