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
struct ovl_inode_params {struct inode* newinode; struct dentry* upperdentry; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ,struct ovl_inode_params*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct dentry*) ; 

__attribute__((used)) static int FUNC13(struct dentry *dentry, struct inode *inode,
			   struct dentry *newdentry, bool hardlink)
{
	struct ovl_inode_params oip = {
		.upperdentry = newdentry,
		.newinode = inode,
	};

	FUNC9(dentry->d_parent, false);
	FUNC8(dentry);
	if (!hardlink) {
		/*
		 * ovl_obtain_alias() can be called after ovl_create_real()
		 * and before we get here, so we may get an inode from cache
		 * with the same real upperdentry that is not the inode we
		 * pre-allocated.  In this case we will use the cached inode
		 * to instantiate the new dentry.
		 *
		 * XXX: if we ever use ovl_obtain_alias() to decode directory
		 * file handles, need to use ovl_get_inode_locked() and
		 * d_instantiate_new() here to prevent from creating two
		 * hashed directory inode aliases.
		 */
		inode = FUNC10(dentry->d_sb, &oip);
		if (FUNC0(inode))
			return FUNC1(inode);
	} else {
		FUNC2(FUNC11(inode) != FUNC4(newdentry));
		FUNC6(newdentry);
		FUNC7(inode);
	}

	FUNC5(dentry, inode);
	if (inode != oip.newinode) {
		FUNC12("overlayfs: newly created inode found in cache (%pd2)\n",
				    dentry);
	}

	/* Force lookup of new upper hardlink to find its lower */
	if (hardlink)
		FUNC3(dentry);

	return 0;
}