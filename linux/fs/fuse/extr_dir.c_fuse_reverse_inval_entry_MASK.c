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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct inode {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 struct dentry* FUNC6 (struct dentry*,struct qstr*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 scalar_t__ FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  fuse_inode_eq ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*) ; 
 scalar_t__ FUNC14 (struct inode*) ; 
 struct inode* FUNC15 (struct super_block*,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC20 (struct dentry*) ; 

int FUNC21(struct super_block *sb, u64 parent_nodeid,
			     u64 child_nodeid, struct qstr *name)
{
	int err = -ENOTDIR;
	struct inode *parent;
	struct dentry *dir;
	struct dentry *entry;

	parent = FUNC15(sb, parent_nodeid, fuse_inode_eq, &parent_nodeid);
	if (!parent)
		return -ENOENT;

	FUNC16(parent);
	if (!FUNC0(parent->i_mode))
		goto unlock;

	err = -ENOENT;
	dir = FUNC3(parent);
	if (!dir)
		goto unlock;

	name->hash = FUNC11(dir, name->name, name->len);
	entry = FUNC6(dir, name);
	FUNC10(dir);
	if (!entry)
		goto unlock;

	FUNC12(parent);
	FUNC13(entry);

	if (child_nodeid != 0 && FUNC8(entry)) {
		FUNC16(FUNC4(entry));
		if (FUNC14(FUNC4(entry)) != child_nodeid) {
			err = -ENOENT;
			goto badentry;
		}
		if (FUNC7(entry)) {
			err = -EBUSY;
			goto badentry;
		}
		if (FUNC5(entry)) {
			FUNC19(entry);
			if (!FUNC20(entry)) {
				err = -ENOTEMPTY;
				goto badentry;
			}
			FUNC4(entry)->i_flags |= S_DEAD;
		}
		FUNC9(entry);
		FUNC1(FUNC4(entry));
		err = 0;
 badentry:
		FUNC17(FUNC4(entry));
		if (!err)
			FUNC2(entry);
	} else {
		err = 0;
	}
	FUNC10(entry);

 unlock:
	FUNC17(parent);
	FUNC18(parent);
	return err;
}