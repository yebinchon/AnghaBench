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
typedef  int /*<<< orphan*/  umode_t ;
struct timespec64 {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  de; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int FUNC2 (struct inode*) ; 
 int S_ATIME ; 
 int S_CTIME ; 
 int S_MTIME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int FUNC6 (struct inode*,struct timespec64*) ; 
 struct inode* FUNC7 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct timespec64*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 
 int FUNC15 (struct inode*,int /*<<< orphan*/ *,int,int,struct timespec64*,struct fat_slot_info*) ; 

__attribute__((used)) static int FUNC16(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct super_block *sb = dir->i_sb;
	struct inode *inode;
	struct fat_slot_info sinfo;
	struct timespec64 ts;
	int err, cluster;

	FUNC12(&FUNC1(sb)->s_lock);

	ts = FUNC4(dir);
	cluster = FUNC6(dir, &ts);
	if (cluster < 0) {
		err = cluster;
		goto out;
	}
	err = FUNC15(dir, &dentry->d_name, 1, cluster, &ts, &sinfo);
	if (err)
		goto out_free;
	FUNC11(dir);
	FUNC10(dir);

	inode = FUNC7(sb, sinfo.de, sinfo.i_pos);
	FUNC3(sinfo.bh);
	if (FUNC0(inode)) {
		err = FUNC2(inode);
		/* the directory was completed, just return a error */
		goto out;
	}
	FUNC11(inode);
	FUNC14(inode, 2);
	FUNC9(inode, &ts, S_ATIME|S_CTIME|S_MTIME);
	/* timestamp is already written, so mark_inode_dirty() is unneeded. */

	FUNC5(dentry, inode);

	FUNC13(&FUNC1(sb)->s_lock);
	return 0;

out_free:
	FUNC8(dir, cluster);
out:
	FUNC13(&FUNC1(sb)->s_lock);
	return err;
}