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
struct super_block {int dummy; } ;
struct ovl_path {int /*<<< orphan*/  layer; struct dentry* dentry; } ;
struct ovl_inode_params {int numlower; void* upperdentry; struct dentry* index; struct ovl_path* lowerpath; } ;
struct ovl_entry {TYPE_1__* lowerstack; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  layer; void* dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OVL_UPPERDATA ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (struct inode*) ; 
 struct dentry* FUNC5 (struct dentry*,struct inode*) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 void* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct ovl_entry* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 struct inode* FUNC12 (struct super_block*,struct ovl_inode_params*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC14(struct super_block *sb,
				       struct dentry *upper_alias,
				       struct ovl_path *lowerpath,
				       struct dentry *index)
{
	struct dentry *lower = lowerpath ? lowerpath->dentry : NULL;
	struct dentry *upper = upper_alias ?: index;
	struct dentry *dentry;
	struct inode *inode;
	struct ovl_entry *oe;
	struct ovl_inode_params oip = {
		.lowerpath = lowerpath,
		.index = index,
		.numlower = !!lower
	};

	/* We get overlay directory dentries with ovl_lookup_real() */
	if (FUNC6(upper ?: lower))
		return FUNC1(-EIO);

	oip.upperdentry = FUNC7(upper);
	inode = FUNC12(sb, &oip);
	if (FUNC2(inode)) {
		FUNC8(upper);
		return FUNC0(inode);
	}

	if (upper)
		FUNC13(OVL_UPPERDATA, inode);

	dentry = FUNC4(inode);
	if (!dentry) {
		dentry = FUNC3(inode->i_sb);
		if (!dentry)
			goto nomem;
		oe = FUNC10(lower ? 1 : 0);
		if (!oe)
			goto nomem;

		if (lower) {
			oe->lowerstack->dentry = FUNC7(lower);
			oe->lowerstack->layer = lowerpath->layer;
		}
		dentry->d_fsdata = oe;
		if (upper_alias)
			FUNC11(dentry);
	}

	return FUNC5(dentry, inode);

nomem:
	FUNC9(inode);
	FUNC8(dentry);
	return FUNC1(-ENOMEM);
}