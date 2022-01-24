#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_inode {int dummy; } ;
struct jffs2_inode_info {int /*<<< orphan*/  sem; struct jffs2_inode_cache* inocache; } ;
struct jffs2_inode_cache {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct jffs2_sb_info*,struct jffs2_inode_info*) ; 
 int FUNC1 (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_raw_inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*,struct jffs2_inode_cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct jffs2_inode_info*) ; 
 struct jffs2_inode_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct jffs2_sb_info *c, struct jffs2_inode_cache *ic)
{
	struct jffs2_raw_inode n;
	struct jffs2_inode_info *f = FUNC4(sizeof(*f), GFP_KERNEL);
	int ret;

	if (!f)
		return -ENOMEM;

	FUNC5(&f->sem);
	FUNC6(&f->sem);
	f->inocache = ic;

	ret = FUNC1(c, f, &n);
	FUNC7(&f->sem);
	FUNC0(c, f);
	FUNC2(c, ic);
	FUNC3 (f);
	return ret;
}