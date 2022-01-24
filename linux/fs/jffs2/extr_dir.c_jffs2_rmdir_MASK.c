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
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {struct jffs2_full_dirent* dents; } ;
struct jffs2_full_dirent {scalar_t__ ino; struct jffs2_full_dirent* next; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct jffs2_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct jffs2_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct jffs2_sb_info*,struct jffs2_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jffs2_inode_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (struct inode *dir_i, struct dentry *dentry)
{
	struct jffs2_sb_info *c = FUNC3(dir_i->i_sb);
	struct jffs2_inode_info *dir_f = FUNC1(dir_i);
	struct jffs2_inode_info *f = FUNC1(FUNC5(dentry));
	struct jffs2_full_dirent *fd;
	int ret;
	uint32_t now = FUNC2();

	for (fd = f->dents ; fd; fd = fd->next) {
		if (fd->ino)
			return -ENOTEMPTY;
	}

	ret = FUNC7(c, dir_f, dentry->d_name.name,
			      dentry->d_name.len, f, now);
	if (!ret) {
		dir_i->i_mtime = dir_i->i_ctime = FUNC0(now);
		FUNC4(FUNC5(dentry));
		FUNC6(dir_i);
	}
	return ret;
}