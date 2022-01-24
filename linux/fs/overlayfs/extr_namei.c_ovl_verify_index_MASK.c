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
typedef  int /*<<< orphan*/  u8 ;
struct ovl_path {struct dentry* dentry; } ;
struct TYPE_5__ {int /*<<< orphan*/  nfs_export; } ;
struct ovl_fs {TYPE_2__ config; } ;
struct ovl_fh {int dummy; } ;
struct TYPE_4__ {int len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_6__ {int i_nlink; int i_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ESTALE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  OVL_XATTR_ORIGIN ; 
 int FUNC1 (struct dentry*) ; 
 int S_IFMT ; 
 TYPE_3__* FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct ovl_fh*) ; 
 struct ovl_fh* FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ovl_fh*,size_t) ; 
 int FUNC9 (struct ovl_fs*,struct ovl_fh*,int,struct dentry*,struct ovl_path**) ; 
 scalar_t__ FUNC10 (struct dentry*,struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC11 (struct ovl_fs*,struct dentry*) ; 
 scalar_t__ FUNC12 (struct dentry*) ; 
 scalar_t__ FUNC13 (struct dentry*) ; 
 int FUNC14 (struct dentry*,int /*<<< orphan*/ ,struct ovl_fh*) ; 
 int /*<<< orphan*/  FUNC15 (char*,struct dentry*,int,int) ; 

int FUNC16(struct ovl_fs *ofs, struct dentry *index)
{
	struct ovl_fh *fh = NULL;
	size_t len;
	struct ovl_path origin = { };
	struct ovl_path *stack = &origin;
	struct dentry *upper = NULL;
	int err;

	if (!FUNC2(index))
		return 0;

	/* Cleanup leftover from index create/cleanup attempt */
	err = -ESTALE;
	if (FUNC12(index))
		goto fail;

	err = -EINVAL;
	if (index->d_name.len < sizeof(struct ovl_fh)*2)
		goto fail;

	err = -ENOMEM;
	len = index->d_name.len / 2;
	fh = FUNC7(len, GFP_KERNEL);
	if (!fh)
		goto fail;

	err = -EINVAL;
	if (FUNC5((u8 *)fh, index->d_name.name, len))
		goto fail;

	err = FUNC8(fh, len);
	if (err)
		goto fail;

	/*
	 * Whiteout index entries are used as an indication that an exported
	 * overlay file handle should be treated as stale (i.e. after unlink
	 * of the overlay inode). These entries contain no origin xattr.
	 */
	if (FUNC13(index))
		goto out;

	/*
	 * Verifying directory index entries are not stale is expensive, so
	 * only verify stale dir index if NFS export is enabled.
	 */
	if (FUNC3(index) && !ofs->config.nfs_export)
		goto out;

	/*
	 * Directory index entries should have 'upper' xattr pointing to the
	 * real upper dir. Non-dir index entries are hardlinks to the upper
	 * real inode. For non-dir index, we can read the copy up origin xattr
	 * directly from the index dentry, but for dir index we first need to
	 * decode the upper directory.
	 */
	upper = FUNC11(ofs, index);
	if (FUNC0(upper)) {
		err = FUNC1(upper);
		/*
		 * Directory index entries with no 'upper' xattr need to be
		 * removed. When dir index entry has a stale 'upper' xattr,
		 * we assume that upper dir was removed and we treat the dir
		 * index as orphan entry that needs to be whited out.
		 */
		if (err == -ESTALE)
			goto orphan;
		else if (!err)
			err = -ESTALE;
		goto fail;
	}

	err = FUNC14(upper, OVL_XATTR_ORIGIN, fh);
	FUNC4(upper);
	if (err)
		goto fail;

	/* Check if non-dir index is orphan and don't warn before cleaning it */
	if (!FUNC3(index) && FUNC2(index)->i_nlink == 1) {
		err = FUNC9(ofs, fh, false, index, &stack);
		if (err)
			goto fail;

		if (FUNC10(origin.dentry, index, 0) == 0)
			goto orphan;
	}

out:
	FUNC4(origin.dentry);
	FUNC6(fh);
	return err;

fail:
	FUNC15("overlayfs: failed to verify index (%pd2, ftype=%x, err=%i)\n",
			    index, FUNC2(index)->i_mode & S_IFMT, err);
	goto out;

orphan:
	FUNC15("overlayfs: orphan index entry (%pd2, ftype=%x, nlink=%u)\n",
			    index, FUNC2(index)->i_mode & S_IFMT,
			    FUNC2(index)->i_nlink);
	err = -ENOENT;
	goto out;
}