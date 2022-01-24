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
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; scalar_t__ i_size; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_sb; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  struct buffer_head handle_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int EIO ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_HT_DIR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct inode* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*,struct inode*) ; 
 int FUNC14 (struct buffer_head*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 struct buffer_head* FUNC16 (struct inode*,TYPE_1__*,struct ext4_dir_entry_2**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 struct buffer_head* FUNC19 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(struct inode *dir, struct dentry *dentry)
{
	int retval;
	struct inode *inode;
	struct buffer_head *bh;
	struct ext4_dir_entry_2 *de;
	handle_t *handle = NULL;

	if (FUNC27(FUNC17(FUNC2(dir->i_sb))))
		return -EIO;

	/* Initialize quotas before so that eventual writes go in
	 * separate transaction */
	retval = FUNC12(dir);
	if (retval)
		return retval;
	retval = FUNC12(FUNC10(dentry));
	if (retval)
		return retval;

	retval = -ENOENT;
	bh = FUNC16(dir, &dentry->d_name, &de, NULL);
	if (FUNC5(bh))
		return FUNC6(bh);
	if (!bh)
		goto end_rmdir;

	inode = FUNC10(dentry);

	retval = -EFSCORRUPTED;
	if (FUNC26(de->inode) != inode->i_ino)
		goto end_rmdir;

	retval = -ENOTEMPTY;
	if (!FUNC15(inode))
		goto end_rmdir;

	handle = FUNC19(dir, EXT4_HT_DIR,
				    FUNC0(dir->i_sb));
	if (FUNC5(handle)) {
		retval = FUNC6(handle);
		handle = NULL;
		goto end_rmdir;
	}

	if (FUNC4(dir))
		FUNC18(handle);

	retval = FUNC14(handle, dir, de, bh);
	if (retval)
		goto end_rmdir;
	if (!FUNC1(inode))
		FUNC24(inode,
			     "empty directory '%.*s' has too many links (%u)",
			     dentry->d_name.len, dentry->d_name.name,
			     inode->i_nlink);
	FUNC25(inode);
	FUNC8(inode);
	/* There's no need to set i_disksize: the fact that i_nlink is
	 * zero will ensure that the right thing happens during any
	 * recovery. */
	inode->i_size = 0;
	FUNC22(handle, inode);
	inode->i_ctime = dir->i_ctime = dir->i_mtime = FUNC9(inode);
	FUNC21(handle, inode);
	FUNC13(handle, dir);
	FUNC23(dir);
	FUNC21(handle, dir);

#ifdef CONFIG_UNICODE
	/* VFS negative dentries are incompatible with Encoding and
	 * Case-insensitiveness. Eventually we'll want avoid
	 * invalidating the dentries here, alongside with returning the
	 * negative dentries at ext4_lookup(), when it is better
	 * supported by the VFS for the CI case.
	 */
	if (IS_CASEFOLDED(dir))
		d_invalidate(dentry);
#endif

end_rmdir:
	FUNC7(bh);
	if (handle)
		FUNC20(handle);
	return retval;
}