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
struct TYPE_3__ {int /*<<< orphan*/  d_alias; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_2__* d_sb; int /*<<< orphan*/  d_hash; TYPE_1__ d_u; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_roots; } ;

/* Variables and functions */
 unsigned int DCACHE_DISCONNECTED ; 
 struct dentry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*,unsigned int) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC12(struct dentry *dentry,
					   struct inode *inode,
					   bool disconnected)
{
	struct dentry *res;
	unsigned add_flags;

	FUNC9(dentry, inode);
	FUNC10(&inode->i_lock);
	res = FUNC0(inode);
	if (res) {
		FUNC11(&inode->i_lock);
		FUNC3(dentry);
		goto out_iput;
	}

	/* attach a disconnected dentry */
	add_flags = FUNC2(inode);

	if (disconnected)
		add_flags |= DCACHE_DISCONNECTED;

	FUNC10(&dentry->d_lock);
	FUNC1(dentry, inode, add_flags);
	FUNC4(&dentry->d_u.d_alias, &inode->i_dentry);
	if (!disconnected) {
		FUNC6(&dentry->d_sb->s_roots);
		FUNC5(&dentry->d_hash, &dentry->d_sb->s_roots);
		FUNC7(&dentry->d_sb->s_roots);
	}
	FUNC11(&dentry->d_lock);
	FUNC11(&inode->i_lock);

	return dentry;

 out_iput:
	FUNC8(inode);
	return res;
}