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
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; } ;
struct hfsplus_sb_info {int /*<<< orphan*/  vh_mutex; int /*<<< orphan*/  file_count; int /*<<< orphan*/  next_cnid; int /*<<< orphan*/  hidden_dir; } ;
struct dentry {int /*<<< orphan*/  d_name; void* d_fsdata; struct dentry* d_parent; } ;
typedef  int /*<<< orphan*/  cnid ;
struct TYPE_2__ {scalar_t__ linkid; } ;

/* Variables and functions */
 int EEXIST ; 
 int EPERM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct hfsplus_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 
 int FUNC7 (scalar_t__,struct inode*,int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct qstr*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct dentry *src_dentry, struct inode *dst_dir,
			struct dentry *dst_dentry)
{
	struct hfsplus_sb_info *sbi = FUNC2(dst_dir->i_sb);
	struct inode *inode = FUNC5(src_dentry);
	struct inode *src_dir = FUNC5(src_dentry->d_parent);
	struct qstr str;
	char name[32];
	u32 cnid, id;
	int res;

	if (FUNC1(inode))
		return -EPERM;
	if (!FUNC3(inode->i_mode))
		return -EPERM;

	FUNC14(&sbi->vh_mutex);
	if (inode->i_ino == (u32)(unsigned long)src_dentry->d_fsdata) {
		for (;;) {
			FUNC6(&id, sizeof(cnid));
			id &= 0x3fffffff;
			str.name = name;
			str.len = FUNC16(name, "iNode%d", id);
			res = FUNC10(inode->i_ino,
						 src_dir, &src_dentry->d_name,
						 sbi->hidden_dir, &str);
			if (!res)
				break;
			if (res != -EEXIST)
				goto out;
		}
		FUNC0(inode)->linkid = id;
		cnid = sbi->next_cnid++;
		src_dentry->d_fsdata = (void *)(unsigned long)cnid;
		res = FUNC7(cnid, src_dir,
			&src_dentry->d_name, inode);
		if (res)
			/* panic? */
			goto out;
		sbi->file_count++;
	}
	cnid = sbi->next_cnid++;
	res = FUNC7(cnid, dst_dir, &dst_dentry->d_name, inode);
	if (res)
		goto out;

	FUNC12(inode);
	FUNC8(dst_dentry, inode, cnid);
	FUNC11(inode);
	inode->i_ctime = FUNC4(inode);
	FUNC13(inode);
	sbi->file_count++;
	FUNC9(dst_dir->i_sb);
out:
	FUNC15(&sbi->vh_mutex);
	return res;
}