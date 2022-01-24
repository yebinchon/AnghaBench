#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct quad_buffer_head {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_10__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_9__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_8__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_7__ {unsigned char* name; unsigned int len; } ;
struct inode {int i_state; int i_mode; int i_size; int i_blocks; int /*<<< orphan*/  i_sb; TYPE_5__ i_data; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; TYPE_1__ d_name; } ;
struct hpfs_inode_info {int mmu_private; int /*<<< orphan*/  i_ea_mode; void* i_ea_size; int /*<<< orphan*/  i_parent_dir; int /*<<< orphan*/  i_dno; } ;
struct hpfs_dirent {int /*<<< orphan*/  file_size; scalar_t__ directory; scalar_t__ read_only; int /*<<< orphan*/  ea_size; int /*<<< orphan*/  read_date; int /*<<< orphan*/  write_date; int /*<<< orphan*/  creation_date; scalar_t__ has_xtd_perm; scalar_t__ has_acl; int /*<<< orphan*/  fnode; } ;
struct dentry {int i_state; int i_mode; int i_size; int i_blocks; int /*<<< orphan*/  i_sb; TYPE_5__ i_data; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; TYPE_1__ d_name; } ;
typedef  void* ino_t ;
struct TYPE_12__ {scalar_t__ sb_eas; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int I_NEW ; 
 int S_IFREG ; 
 struct inode* FUNC1 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  hpfs_aops ; 
 int /*<<< orphan*/  FUNC2 (struct quad_buffer_head*) ; 
 int FUNC3 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hpfs_file_iops ; 
 int /*<<< orphan*/  hpfs_file_ops ; 
 struct hpfs_inode_info* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 TYPE_6__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ,void*) ; 
 struct hpfs_dirent* FUNC15 (struct inode*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 

struct dentry *FUNC19(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
	const unsigned char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct quad_buffer_head qbh;
	struct hpfs_dirent *de;
	ino_t ino;
	int err;
	struct inode *result = NULL;
	struct hpfs_inode_info *hpfs_result;

	FUNC7(dir->i_sb);
	if ((err = FUNC3(name, &len))) {
		if (err == -ENAMETOOLONG) {
			FUNC10(dir->i_sb);
			return FUNC0(-ENAMETOOLONG);
		}
		goto end_add;
	}

	/*
	 * '.' and '..' will never be passed here.
	 */

	de = FUNC15(dir, FUNC5(dir)->i_dno, name, len, NULL, &qbh);

	/*
	 * This is not really a bailout, just means file not found.
	 */

	if (!de) goto end;

	/*
	 * Get inode number, what we're after.
	 */

	ino = FUNC13(de->fnode);

	/*
	 * Go find or make an inode.
	 */

	result = FUNC11(dir->i_sb, ino);
	if (!result) {
		FUNC4(dir->i_sb, "hpfs_lookup: can't get inode");
		result = FUNC0(-ENOMEM);
		goto bail1;
	}
	if (result->i_state & I_NEW) {
		FUNC6(result);
		if (de->directory)
			FUNC8(result);
		else if (FUNC13(de->ea_size) && FUNC9(dir->i_sb)->sb_eas)
			FUNC8(result);
		else {
			result->i_mode |= S_IFREG;
			result->i_mode &= ~0111;
			result->i_op = &hpfs_file_iops;
			result->i_fop = &hpfs_file_ops;
			FUNC17(result, 1);
		}
		FUNC18(result);
	}
	hpfs_result = FUNC5(result);
	if (!de->directory) hpfs_result->i_parent_dir = dir->i_ino;

	if (de->has_acl || de->has_xtd_perm) if (!FUNC16(dir->i_sb)) {
		FUNC4(result->i_sb, "ACLs or XPERM found. This is probably HPFS386. This driver doesn't support it now. Send me some info on these structures");
		FUNC12(result);
		result = FUNC0(-EINVAL);
		goto bail1;
	}

	/*
	 * Fill in the info from the directory if this is a newly created
	 * inode.
	 */

	if (!result->i_ctime.tv_sec) {
		if (!(result->i_ctime.tv_sec = FUNC14(dir->i_sb, FUNC13(de->creation_date))))
			result->i_ctime.tv_sec = 1;
		result->i_ctime.tv_nsec = 0;
		result->i_mtime.tv_sec = FUNC14(dir->i_sb, FUNC13(de->write_date));
		result->i_mtime.tv_nsec = 0;
		result->i_atime.tv_sec = FUNC14(dir->i_sb, FUNC13(de->read_date));
		result->i_atime.tv_nsec = 0;
		hpfs_result->i_ea_size = FUNC13(de->ea_size);
		if (!hpfs_result->i_ea_mode && de->read_only)
			result->i_mode &= ~0222;
		if (!de->directory) {
			if (result->i_size == -1) {
				result->i_size = FUNC13(de->file_size);
				result->i_data.a_ops = &hpfs_aops;
				FUNC5(result)->mmu_private = result->i_size;
			/*
			 * i_blocks should count the fnode and any anodes.
			 * We count 1 for the fnode and don't bother about
			 * anodes -- the disk heads are on the directory band
			 * and we want them to stay there.
			 */
				result->i_blocks = 1 + ((result->i_size + 511) >> 9);
			}
		}
	}

bail1:
	FUNC2(&qbh);

	/*
	 * Made it.
	 */

end:
end_add:
	FUNC10(dir->i_sb);
	return FUNC1(result, dentry);
}