#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct timespec64 {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  de; } ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_lock; int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MSDOS_NAME ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int FUNC2 (struct inode*) ; 
 int S_ATIME ; 
 int S_CTIME ; 
 int S_MTIME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 struct inode* FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct super_block*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,unsigned char*,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct timespec64*,int) ; 
 int FUNC10 (struct inode*,unsigned char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct timespec64*,struct fat_slot_info*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry, umode_t mode,
			bool excl)
{
	struct super_block *sb = dir->i_sb;
	struct inode *inode = NULL;
	struct fat_slot_info sinfo;
	struct timespec64 ts;
	unsigned char msdos_name[MSDOS_NAME];
	int err, is_hid;

	FUNC12(&FUNC1(sb)->s_lock);

	err = FUNC11(dentry->d_name.name, dentry->d_name.len,
				msdos_name, &FUNC1(sb)->options);
	if (err)
		goto out;
	is_hid = (dentry->d_name.name[0] == '.') && (msdos_name[0] != '.');
	/* Have to do it due to foo vs. .foo conflicts */
	if (!FUNC8(dir, msdos_name, &sinfo)) {
		FUNC3(sinfo.bh);
		err = -EINVAL;
		goto out;
	}

	ts = FUNC4(dir);
	err = FUNC10(dir, msdos_name, 0, is_hid, 0, &ts, &sinfo);
	if (err)
		goto out;
	inode = FUNC6(sb, sinfo.de, sinfo.i_pos);
	FUNC3(sinfo.bh);
	if (FUNC0(inode)) {
		err = FUNC2(inode);
		goto out;
	}
	FUNC9(inode, &ts, S_ATIME|S_CTIME|S_MTIME);
	/* timestamp is already written, so mark_inode_dirty() is unneeded. */

	FUNC5(dentry, inode);
out:
	FUNC13(&FUNC1(sb)->s_lock);
	if (!err)
		err = FUNC7(sb, dir, inode);
	return err;
}