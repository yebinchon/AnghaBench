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
struct TYPE_2__ {scalar_t__ len; } ;
struct inode {struct inode* i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; TYPE_1__ d_name; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct dentry {struct dentry* i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; TYPE_1__ d_name; } ;
struct buffer_head {struct buffer_head* i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; TYPE_1__ d_name; } ;
typedef  struct inode* __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  EPERM ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*,struct inode*) ; 
 int /*<<< orphan*/  EXT4_IGET_NORMAL ; 
 scalar_t__ EXT4_NAME_LEN ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct inode*,struct inode*) ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (struct inode*,struct inode*,struct ext4_dir_entry_2**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 struct inode* FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static struct dentry *FUNC18(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
	struct inode *inode;
	struct ext4_dir_entry_2 *de;
	struct buffer_head *bh;

	if (dentry->d_name.len > EXT4_NAME_LEN)
		return FUNC1(-ENAMETOOLONG);

	bh = FUNC11(dir, dentry, &de);
	if (FUNC5(bh))
		return FUNC0(bh);
	inode = NULL;
	if (bh) {
		__u32 ino = FUNC16(de->inode);
		FUNC8(bh);
		if (!FUNC12(dir->i_sb, ino)) {
			FUNC2(dir, "bad inode number: %u", ino);
			return FUNC1(-EFSCORRUPTED);
		}
		if (FUNC17(ino == dir->i_ino)) {
			FUNC2(dir, "'%pd' linked to parent dir",
					 dentry);
			return FUNC1(-EFSCORRUPTED);
		}
		inode = FUNC10(dir->i_sb, ino, EXT4_IGET_NORMAL);
		if (inode == FUNC1(-ESTALE)) {
			FUNC2(dir,
					 "deleted inode referenced: %u",
					 ino);
			return FUNC1(-EFSCORRUPTED);
		}
		if (!FUNC5(inode) && FUNC4(dir) &&
		    (FUNC6(inode->i_mode) || FUNC7(inode->i_mode)) &&
		    !FUNC14(dir, inode)) {
			FUNC13(inode->i_sb,
				     "Inconsistent encryption contexts: %lu/%lu",
				     dir->i_ino, inode->i_ino);
			FUNC15(inode);
			return FUNC1(-EPERM);
		}
	}

#ifdef CONFIG_UNICODE
	if (!inode && IS_CASEFOLDED(dir)) {
		/* Eventually we want to call d_add_ci(dentry, NULL)
		 * for negative dentries in the encoding case as
		 * well.  For now, prevent the negative dentry
		 * from being cached.
		 */
		return NULL;
	}
#endif
	return FUNC9(inode, dentry);
}