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
typedef  scalar_t__ u32 ;
struct qstr {char* name; int /*<<< orphan*/  len; } ;
struct inode {scalar_t__ i_ino; scalar_t__ i_nlink; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_sb; } ;
struct hfsplus_sb_info {int /*<<< orphan*/  vh_mutex; int /*<<< orphan*/  file_count; struct inode* hidden_dir; } ;
struct dentry {int /*<<< orphan*/  d_name; scalar_t__ d_fsdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  opencnt; } ;

/* Variables and functions */
 int EPERM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct hfsplus_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_DEAD ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (scalar_t__,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (scalar_t__,struct inode*,int /*<<< orphan*/ *,struct inode*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct inode *dir, struct dentry *dentry)
{
	struct hfsplus_sb_info *sbi = FUNC2(dir->i_sb);
	struct inode *inode = FUNC6(dentry);
	struct qstr str;
	char name[32];
	u32 cnid;
	int res;

	if (FUNC1(inode))
		return -EPERM;

	FUNC12(&sbi->vh_mutex);
	cnid = (u32)(unsigned long)dentry->d_fsdata;
	if (inode->i_ino == cnid &&
	    FUNC3(&FUNC0(inode)->opencnt)) {
		str.name = name;
		str.len = FUNC14(name, "temp%lu", inode->i_ino);
		res = FUNC10(inode->i_ino,
					 dir, &dentry->d_name,
					 sbi->hidden_dir, &str);
		if (!res) {
			inode->i_flags |= S_DEAD;
			FUNC7(inode);
		}
		goto out;
	}
	res = FUNC8(cnid, dir, &dentry->d_name);
	if (res)
		goto out;

	if (inode->i_nlink > 0)
		FUNC7(inode);
	if (inode->i_ino == cnid)
		FUNC4(inode);
	if (!inode->i_nlink) {
		if (inode->i_ino != cnid) {
			sbi->file_count--;
			if (!FUNC3(&FUNC0(inode)->opencnt)) {
				res = FUNC8(inode->i_ino,
							 sbi->hidden_dir,
							 NULL);
				if (!res)
					FUNC9(inode);
			} else
				inode->i_flags |= S_DEAD;
		} else
			FUNC9(inode);
	} else
		sbi->file_count--;
	inode->i_ctime = FUNC5(inode);
	FUNC11(inode);
out:
	FUNC13(&sbi->vh_mutex);
	return res;
}