#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_3__* i_sb; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_parent; TYPE_1__ d_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_id; TYPE_2__* s_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ELOOP ; 
 struct dentry* FUNC1 (struct inode*) ; 
 struct dentry* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct dentry*,int) ; 
 int FUNC9 (struct inode*,struct dentry*,struct dentry*) ; 
 struct dentry* FUNC10 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 struct dentry* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rename_lock ; 
 int /*<<< orphan*/  FUNC16 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC22(struct inode *inode, struct dentry *dentry)
{
	if (FUNC3(inode))
		return FUNC1(inode);

	FUNC0(!FUNC11(dentry));

	if (!inode)
		goto out;

	FUNC16(dentry, inode);
	FUNC17(&inode->i_lock);
	if (FUNC5(inode->i_mode)) {
		struct dentry *new = FUNC7(inode);
		if (FUNC19(new)) {
			/* The reference to new ensures it remains an alias */
			FUNC18(&inode->i_lock);
			FUNC20(&rename_lock);
			if (FUNC19(FUNC10(new, dentry))) {
				FUNC21(&rename_lock);
				FUNC13(new);
				new = FUNC2(-ELOOP);
				FUNC15(
					"VFS: Lookup of '%s' in %s %s"
					" would have caused loop\n",
					dentry->d_name.name,
					inode->i_sb->s_type->name,
					inode->i_sb->s_id);
			} else if (!FUNC4(new)) {
				struct dentry *old_parent = FUNC12(new->d_parent);
				int err = FUNC9(inode, dentry, new);
				FUNC21(&rename_lock);
				if (err) {
					FUNC13(new);
					new = FUNC2(err);
				}
				FUNC13(old_parent);
			} else {
				FUNC8(new, dentry, false);
				FUNC21(&rename_lock);
			}
			FUNC14(inode);
			return new;
		}
	}
out:
	FUNC6(dentry, inode);
	return NULL;
}