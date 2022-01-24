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
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {TYPE_2__* inocache; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  pino_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct jffs2_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct jffs2_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int FUNC5 (struct jffs2_sb_info*,struct jffs2_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jffs2_inode_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *dir_i, struct dentry *dentry)
{
	struct jffs2_sb_info *c = FUNC3(dir_i->i_sb);
	struct jffs2_inode_info *dir_f = FUNC1(dir_i);
	struct jffs2_inode_info *dead_f = FUNC1(FUNC4(dentry));
	int ret;
	uint32_t now = FUNC2();

	ret = FUNC5(c, dir_f, dentry->d_name.name,
			      dentry->d_name.len, dead_f, now);
	if (dead_f->inocache)
		FUNC6(FUNC4(dentry), dead_f->inocache->pino_nlink);
	if (!ret)
		dir_i->i_mtime = dir_i->i_ctime = FUNC0(now);
	return ret;
}