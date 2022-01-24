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
 int FUNC6 (struct inode*,struct timespec64*) ; 
 struct inode* FUNC7 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,unsigned char*,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct timespec64*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (struct inode*,unsigned char*,int,int,int,struct timespec64*,struct fat_slot_info*) ; 
 int FUNC14 (char*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int) ; 

__attribute__((used)) static int FUNC18(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct super_block *sb = dir->i_sb;
	struct fat_slot_info sinfo;
	struct inode *inode;
	unsigned char msdos_name[MSDOS_NAME];
	struct timespec64 ts;
	int err, is_hid, cluster;

	FUNC15(&FUNC1(sb)->s_lock);

	err = FUNC14(dentry->d_name.name, dentry->d_name.len,
				msdos_name, &FUNC1(sb)->options);
	if (err)
		goto out;
	is_hid = (dentry->d_name.name[0] == '.') && (msdos_name[0] != '.');
	/* foo vs .foo situation */
	if (!FUNC10(dir, msdos_name, &sinfo)) {
		FUNC3(sinfo.bh);
		err = -EINVAL;
		goto out;
	}

	ts = FUNC4(dir);
	cluster = FUNC6(dir, &ts);
	if (cluster < 0) {
		err = cluster;
		goto out;
	}
	err = FUNC13(dir, msdos_name, 1, is_hid, cluster, &ts, &sinfo);
	if (err)
		goto out_free;
	FUNC12(dir);

	inode = FUNC7(sb, sinfo.de, sinfo.i_pos);
	FUNC3(sinfo.bh);
	if (FUNC0(inode)) {
		err = FUNC2(inode);
		/* the directory was completed, just return a error */
		goto out;
	}
	FUNC17(inode, 2);
	FUNC11(inode, &ts, S_ATIME|S_CTIME|S_MTIME);
	/* timestamp is already written, so mark_inode_dirty() is unneeded. */

	FUNC5(dentry, inode);

	FUNC16(&FUNC1(sb)->s_lock);
	FUNC8(sb, dir, inode);
	return 0;

out_free:
	FUNC9(dir, cluster);
out:
	FUNC16(&FUNC1(sb)->s_lock);
	return err;
}