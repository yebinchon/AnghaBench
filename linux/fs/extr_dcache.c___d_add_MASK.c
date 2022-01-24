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
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_dentry; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_alias; } ;
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_seq; TYPE_2__ d_u; TYPE_1__* d_parent; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*,unsigned int) ; 
 unsigned int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC14(struct dentry *dentry, struct inode *inode)
{
	struct inode *dir = NULL;
	unsigned n;
	FUNC10(&dentry->d_lock);
	if (FUNC13(FUNC4(dentry))) {
		dir = dentry->d_parent->d_inode;
		n = FUNC12(dir);
		FUNC0(dentry);
	}
	if (inode) {
		unsigned add_flags = FUNC3(inode);
		FUNC7(&dentry->d_u.d_alias, &inode->i_dentry);
		FUNC8(&dentry->d_seq);
		FUNC2(dentry, inode, add_flags);
		FUNC9(&dentry->d_seq);
		FUNC6(dentry);
	}
	FUNC1(dentry);
	if (dir)
		FUNC5(dir, n);
	FUNC11(&dentry->d_lock);
	if (inode)
		FUNC11(&inode->i_lock);
}