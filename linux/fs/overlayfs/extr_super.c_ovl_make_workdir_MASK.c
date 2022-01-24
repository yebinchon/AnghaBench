#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct super_block {int dummy; } ;
struct path {int dummy; } ;
struct TYPE_7__ {int index; int metacopy; int nfs_export; } ;
struct ovl_fs {int tmpfile; int noxattr; TYPE_1__ config; scalar_t__ xino_bits; TYPE_2__* workdir; int /*<<< orphan*/  workdir_trap; struct vfsmount* upper_mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int FILEID_INO32_GEN ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  OVL_WORKDIR_NAME ; 
 int /*<<< orphan*/  OVL_XATTR_OPAQUE ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfsmount*) ; 
 int FUNC3 (struct vfsmount*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct path*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (struct super_block*,TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC9 (struct ovl_fs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, struct ovl_fs *ofs,
			    struct path *workpath)
{
	struct vfsmount *mnt = ofs->upper_mnt;
	struct dentry *temp;
	int fh_type;
	int err;

	err = FUNC3(mnt);
	if (err)
		return err;

	ofs->workdir = FUNC9(ofs, OVL_WORKDIR_NAME, false);
	if (!ofs->workdir)
		goto out;

	err = FUNC8(sb, ofs->workdir, &ofs->workdir_trap, "workdir");
	if (err)
		goto out;

	/*
	 * Upper should support d_type, else whiteouts are visible.  Given
	 * workdir and upper are on same fs, we can do iterate_dir() on
	 * workdir. This check requires successful creation of workdir in
	 * previous step.
	 */
	err = FUNC5(workpath);
	if (err < 0)
		goto out;

	/*
	 * We allowed this configuration and don't want to break users over
	 * kernel upgrade. So warn instead of erroring out.
	 */
	if (!err)
		FUNC10("overlayfs: upper fs needs to support d_type.\n");

	/* Check if upper/work fs supports O_TMPFILE */
	temp = FUNC7(ofs->workdir, S_IFREG | 0);
	ofs->tmpfile = !FUNC0(temp);
	if (ofs->tmpfile)
		FUNC1(temp);
	else
		FUNC10("overlayfs: upper fs does not support tmpfile.\n");

	/*
	 * Check if upper/work fs supports trusted.overlay.* xattr
	 */
	err = FUNC6(ofs->workdir, OVL_XATTR_OPAQUE, "0", 1, 0);
	if (err) {
		ofs->noxattr = true;
		ofs->config.index = false;
		ofs->config.metacopy = false;
		FUNC10("overlayfs: upper fs does not support xattr, falling back to index=off and metacopy=off.\n");
		err = 0;
	} else {
		FUNC11(ofs->workdir, OVL_XATTR_OPAQUE);
	}

	/* Check if upper/work fs supports file handles */
	fh_type = FUNC4(ofs->workdir->d_sb);
	if (ofs->config.index && !fh_type) {
		ofs->config.index = false;
		FUNC10("overlayfs: upper fs does not support file handles, falling back to index=off.\n");
	}

	/* Check if upper fs has 32bit inode numbers */
	if (fh_type != FILEID_INO32_GEN)
		ofs->xino_bits = 0;

	/* NFS export of r/w mount depends on index */
	if (ofs->config.nfs_export && !ofs->config.index) {
		FUNC10("overlayfs: NFS export requires \"index=on\", falling back to nfs_export=off.\n");
		ofs->config.nfs_export = false;
	}
out:
	FUNC2(mnt);
	return err;
}