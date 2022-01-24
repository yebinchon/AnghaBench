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
struct inode {scalar_t__ i_ino; scalar_t__ i_nlink; void* i_ctime; void* i_mtime; int /*<<< orphan*/  i_sb; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  struct buffer_head handle_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_HT_DIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 void* FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct buffer_head*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ; 
 struct buffer_head* FUNC13 (struct inode*,TYPE_1__*,struct ext4_dir_entry_2**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 struct buffer_head* FUNC16 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC25 (struct dentry*,int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct inode *dir, struct dentry *dentry)
{
	int retval;
	struct inode *inode;
	struct buffer_head *bh;
	struct ext4_dir_entry_2 *de;
	handle_t *handle = NULL;

	if (FUNC26(FUNC14(FUNC1(dir->i_sb))))
		return -EIO;

	FUNC24(dir, dentry);
	/* Initialize quotas before so that eventual writes go
	 * in separate transaction */
	retval = FUNC10(dir);
	if (retval)
		return retval;
	retval = FUNC10(FUNC8(dentry));
	if (retval)
		return retval;

	retval = -ENOENT;
	bh = FUNC13(dir, &dentry->d_name, &de, NULL);
	if (FUNC4(bh))
		return FUNC5(bh);
	if (!bh)
		goto end_unlink;

	inode = FUNC8(dentry);

	retval = -EFSCORRUPTED;
	if (FUNC22(de->inode) != inode->i_ino)
		goto end_unlink;

	handle = FUNC16(dir, EXT4_HT_DIR,
				    FUNC0(dir->i_sb));
	if (FUNC4(handle)) {
		retval = FUNC5(handle);
		handle = NULL;
		goto end_unlink;
	}

	if (FUNC3(dir))
		FUNC15(handle);

	if (inode->i_nlink == 0) {
		FUNC21(inode, "Deleting file '%.*s' with no links",
				   dentry->d_name.len, dentry->d_name.name);
		FUNC23(inode, 1);
	}
	retval = FUNC12(handle, dir, de, bh);
	if (retval)
		goto end_unlink;
	dir->i_ctime = dir->i_mtime = FUNC7(dir);
	FUNC20(dir);
	FUNC18(handle, dir);
	FUNC11(inode);
	if (!inode->i_nlink)
		FUNC19(handle, inode);
	inode->i_ctime = FUNC7(inode);
	FUNC18(handle, inode);

#ifdef CONFIG_UNICODE
	/* VFS negative dentries are incompatible with Encoding and
	 * Case-insensitiveness. Eventually we'll want avoid
	 * invalidating the dentries here, alongside with returning the
	 * negative dentries at ext4_lookup(), when it is  better
	 * supported by the VFS for the CI case.
	 */
	if (IS_CASEFOLDED(dir))
		d_invalidate(dentry);
#endif

end_unlink:
	FUNC6(bh);
	if (handle)
		FUNC17(handle);
	FUNC25(dentry, retval);
	return retval;
}