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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct inode {int i_state; int i_generation; int i_mode; int /*<<< orphan*/  i_flags; } ;
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  nlookup; } ;
struct fuse_conn {int /*<<< orphan*/  writeback_cache; } ;
struct fuse_attr {int mode; } ;

/* Variables and functions */
 int I_NEW ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S_NOATIME ; 
 int /*<<< orphan*/  S_NOCMTIME ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct fuse_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct fuse_attr*) ; 
 int /*<<< orphan*/  fuse_inode_eq ; 
 int /*<<< orphan*/  fuse_inode_set ; 
 struct fuse_conn* FUNC3 (struct super_block*) ; 
 struct fuse_inode* FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

struct inode *FUNC11(struct super_block *sb, u64 nodeid,
			int generation, struct fuse_attr *attr,
			u64 attr_valid, u64 attr_version)
{
	struct inode *inode;
	struct fuse_inode *fi;
	struct fuse_conn *fc = FUNC3(sb);

 retry:
	inode = FUNC5(sb, nodeid, fuse_inode_eq, fuse_inode_set, &nodeid);
	if (!inode)
		return NULL;

	if ((inode->i_state & I_NEW)) {
		inode->i_flags |= S_NOATIME;
		if (!fc->writeback_cache || !FUNC0(attr->mode))
			inode->i_flags |= S_NOCMTIME;
		inode->i_generation = generation;
		FUNC2(inode, attr);
		FUNC10(inode);
	} else if ((inode->i_mode ^ attr->mode) & S_IFMT) {
		/* Inode has changed type, any I/O on the old should fail */
		FUNC7(inode);
		FUNC6(inode);
		goto retry;
	}

	fi = FUNC4(inode);
	FUNC8(&fi->lock);
	fi->nlookup++;
	FUNC9(&fi->lock);
	FUNC1(inode, attr, attr_valid, attr_version);

	return inode;
}