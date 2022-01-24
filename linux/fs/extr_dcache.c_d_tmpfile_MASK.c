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
struct inode {scalar_t__ i_ino; } ;
struct TYPE_5__ {scalar_t__ name; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_alias; } ;
struct dentry {scalar_t__ d_iname; TYPE_3__* d_parent; int /*<<< orphan*/  d_lock; TYPE_2__ d_name; TYPE_1__ d_u; } ;
struct TYPE_6__ {int /*<<< orphan*/  d_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DENTRY_D_LOCK_NESTED ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,unsigned long long) ; 

void FUNC9(struct dentry *dentry, struct inode *inode)
{
	FUNC4(inode);
	FUNC0(dentry->d_name.name != dentry->d_iname ||
		!FUNC3(&dentry->d_u.d_alias) ||
		!FUNC2(dentry));
	FUNC5(&dentry->d_parent->d_lock);
	FUNC6(&dentry->d_lock, DENTRY_D_LOCK_NESTED);
	dentry->d_name.len = FUNC8(dentry->d_iname, "#%llu",
				(unsigned long long)inode->i_ino);
	FUNC7(&dentry->d_lock);
	FUNC7(&dentry->d_parent->d_lock);
	FUNC1(dentry, inode);
}