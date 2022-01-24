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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {int /*<<< orphan*/  sem; TYPE_2__* inocache; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  pino_nlink; int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 int DT_REG ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct jffs2_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct jffs2_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int S_IFMT ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct jffs2_sb_info*,struct jffs2_inode_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12 (struct dentry *old_dentry, struct inode *dir_i, struct dentry *dentry)
{
	struct jffs2_sb_info *c = FUNC3(old_dentry->d_sb);
	struct jffs2_inode_info *f = FUNC1(FUNC4(old_dentry));
	struct jffs2_inode_info *dir_f = FUNC1(dir_i);
	int ret;
	uint8_t type;
	uint32_t now;

	/* Don't let people make hard links to bad inodes. */
	if (!f->inocache)
		return -EIO;

	if (FUNC6(old_dentry))
		return -EPERM;

	/* XXX: This is ugly */
	type = (FUNC4(old_dentry)->i_mode & S_IFMT) >> 12;
	if (!type) type = DT_REG;

	now = FUNC2();
	ret = FUNC8(c, dir_f, f->inocache->ino, type, dentry->d_name.name, dentry->d_name.len, now);

	if (!ret) {
		FUNC9(&f->sem);
		FUNC11(FUNC4(old_dentry), ++f->inocache->pino_nlink);
		FUNC10(&f->sem);
		FUNC5(dentry, FUNC4(old_dentry));
		dir_i->i_mtime = dir_i->i_ctime = FUNC0(now);
		FUNC7(FUNC4(old_dentry));
	}
	return ret;
}