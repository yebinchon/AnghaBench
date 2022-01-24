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
struct vfsmount {int dummy; } ;
struct super_block {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct ovl_fs {scalar_t__ indexdir; int /*<<< orphan*/  indexdir_trap; struct vfsmount* upper_mnt; } ;
struct ovl_entry {TYPE_1__* lowerstack; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVL_INDEXDIR_NAME ; 
 int /*<<< orphan*/  OVL_XATTR_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (struct vfsmount*) ; 
 int FUNC1 (struct vfsmount*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (struct ovl_fs*) ; 
 int FUNC4 (struct super_block*,scalar_t__,int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct ovl_fs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb, struct ovl_fs *ofs,
			    struct ovl_entry *oe, struct path *upperpath)
{
	struct vfsmount *mnt = ofs->upper_mnt;
	int err;

	err = FUNC1(mnt);
	if (err)
		return err;

	/* Verify lower root is upper root origin */
	err = FUNC5(upperpath->dentry, oe->lowerstack[0].dentry,
				true);
	if (err) {
		FUNC9("overlayfs: failed to verify upper root origin\n");
		goto out;
	}

	ofs->indexdir = FUNC8(ofs, OVL_INDEXDIR_NAME, true);
	if (ofs->indexdir) {
		err = FUNC4(sb, ofs->indexdir, &ofs->indexdir_trap,
				     "indexdir");
		if (err)
			goto out;

		/*
		 * Verify upper root is exclusively associated with index dir.
		 * Older kernels stored upper fh in "trusted.overlay.origin"
		 * xattr. If that xattr exists, verify that it is a match to
		 * upper dir file handle. In any case, verify or set xattr
		 * "trusted.overlay.upper" to indicate that index may have
		 * directory entries.
		 */
		if (FUNC2(ofs->indexdir)) {
			err = FUNC6(ofs->indexdir, OVL_XATTR_ORIGIN,
						upperpath->dentry, true, false);
			if (err)
				FUNC9("overlayfs: failed to verify index dir 'origin' xattr\n");
		}
		err = FUNC7(ofs->indexdir, upperpath->dentry, true);
		if (err)
			FUNC9("overlayfs: failed to verify index dir 'upper' xattr\n");

		/* Cleanup bad/stale/orphan index entries */
		if (!err)
			err = FUNC3(ofs);
	}
	if (err || !ofs->indexdir)
		FUNC10("overlayfs: try deleting index dir or mounting with '-o index=off' to disable inodes index.\n");

out:
	FUNC0(mnt);
	return err;
}