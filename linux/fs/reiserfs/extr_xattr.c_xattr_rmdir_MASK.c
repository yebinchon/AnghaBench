#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_flags; } ;
struct TYPE_5__ {int (* rmdir ) (struct inode*,struct dentry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 TYPE_2__* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry)
{
	int error;

	FUNC0(!FUNC3(dir));

	FUNC4(FUNC2(dentry), I_MUTEX_CHILD);
	error = dir->i_op->rmdir(dir, dentry);
	if (!error)
		FUNC2(dentry)->i_flags |= S_DEAD;
	FUNC5(FUNC2(dentry));
	if (!error)
		FUNC1(dentry);

	return error;
}