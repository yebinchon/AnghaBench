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
typedef  int u32 ;
struct path {scalar_t__ dentry; } ;
struct ovl_layer {int dummy; } ;
struct kstat {int nlink; int /*<<< orphan*/  blocks; int /*<<< orphan*/  ino; } ;
struct dentry {TYPE_1__* d_inode; int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;
typedef  enum ovl_path_type { ____Placeholder_ovl_path_type } ovl_path_type ;
struct TYPE_2__ {int i_nlink; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVL_INDEX ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int STATX_BLOCKS ; 
 int STATX_INO ; 
 int STATX_NLINK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int FUNC6 (struct dentry*) ; 
 struct ovl_layer* FUNC7 (struct dentry*) ; 
 int FUNC8 (struct dentry*,struct kstat*,struct ovl_layer*) ; 
 struct cred* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct path*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,struct path*) ; 
 int FUNC12 (struct dentry*,struct path*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct cred const*) ; 
 int FUNC18 (struct path*,struct kstat*,int,unsigned int) ; 

int FUNC19(const struct path *path, struct kstat *stat,
		u32 request_mask, unsigned int flags)
{
	struct dentry *dentry = path->dentry;
	enum ovl_path_type type;
	struct path realpath;
	const struct cred *old_cred;
	bool is_dir = FUNC3(dentry->d_inode->i_mode);
	bool samefs = FUNC13(dentry->d_sb);
	struct ovl_layer *lower_layer = NULL;
	int err;
	bool metacopy_blocks = false;

	metacopy_blocks = FUNC6(dentry);

	type = FUNC12(dentry, &realpath);
	old_cred = FUNC9(dentry->d_sb);
	err = FUNC18(&realpath, stat, request_mask, flags);
	if (err)
		goto out;

	/*
	 * For non-dir or same fs, we use st_ino of the copy up origin.
	 * This guaranties constant st_dev/st_ino across copy up.
	 * With xino feature and non-samefs, we use st_ino of the copy up
	 * origin masked with high bits that represent the layer id.
	 *
	 * If lower filesystem supports NFS file handles, this also guaranties
	 * persistent st_ino across mount cycle.
	 */
	if (!is_dir || samefs || FUNC16(dentry->d_sb)) {
		if (!FUNC2(type)) {
			lower_layer = FUNC7(dentry);
		} else if (FUNC1(type)) {
			struct kstat lowerstat;
			u32 lowermask = STATX_INO | STATX_BLOCKS |
					(!is_dir ? STATX_NLINK : 0);

			FUNC10(dentry, &realpath);
			err = FUNC18(&realpath, &lowerstat,
					  lowermask, flags);
			if (err)
				goto out;

			/*
			 * Lower hardlinks may be broken on copy up to different
			 * upper files, so we cannot use the lower origin st_ino
			 * for those different files, even for the same fs case.
			 *
			 * Similarly, several redirected dirs can point to the
			 * same dir on a lower layer. With the "verify_lower"
			 * feature, we do not use the lower origin st_ino, if
			 * we haven't verified that this redirect is unique.
			 *
			 * With inodes index enabled, it is safe to use st_ino
			 * of an indexed origin. The index validates that the
			 * upper hardlink is not broken and that a redirected
			 * dir is the only redirect to that origin.
			 */
			if (FUNC14(OVL_INDEX, FUNC4(dentry)) ||
			    (!FUNC15(dentry->d_sb) &&
			     (is_dir || lowerstat.nlink == 1))) {
				stat->ino = lowerstat.ino;
				lower_layer = FUNC7(dentry);
			}

			/*
			 * If we are querying a metacopy dentry and lower
			 * dentry is data dentry, then use the blocks we
			 * queried just now. We don't have to do additional
			 * vfs_getattr(). If lower itself is metacopy, then
			 * additional vfs_getattr() is unavoidable.
			 */
			if (metacopy_blocks &&
			    realpath.dentry == FUNC5(dentry)) {
				stat->blocks = lowerstat.blocks;
				metacopy_blocks = false;
			}
		}

		if (metacopy_blocks) {
			/*
			 * If lower is not same as lowerdata or if there was
			 * no origin on upper, we can end up here.
			 */
			struct kstat lowerdatastat;
			u32 lowermask = STATX_BLOCKS;

			FUNC11(dentry, &realpath);
			err = FUNC18(&realpath, &lowerdatastat,
					  lowermask, flags);
			if (err)
				goto out;
			stat->blocks = lowerdatastat.blocks;
		}
	}

	err = FUNC8(dentry, stat, lower_layer);
	if (err)
		goto out;

	/*
	 * It's probably not worth it to count subdirs to get the
	 * correct link count.  nlink=1 seems to pacify 'find' and
	 * other utilities.
	 */
	if (is_dir && FUNC0(type))
		stat->nlink = 1;

	/*
	 * Return the overlay inode nlinks for indexed upper inodes.
	 * Overlay inode nlink counts the union of the upper hardlinks
	 * and non-covered lower hardlinks. It does not include the upper
	 * index hardlink.
	 */
	if (!is_dir && FUNC14(OVL_INDEX, FUNC4(dentry)))
		stat->nlink = dentry->d_inode->i_nlink;

out:
	FUNC17(old_cred);

	return err;
}