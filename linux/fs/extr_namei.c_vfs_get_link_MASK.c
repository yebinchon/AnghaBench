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
struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct TYPE_2__ {char* (* get_link ) (struct dentry*,struct inode*,struct delayed_call*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 char* FUNC4 (struct dentry*,struct inode*,struct delayed_call*) ; 

const char *FUNC5(struct dentry *dentry, struct delayed_call *done)
{
	const char *res = FUNC0(-EINVAL);
	struct inode *inode = FUNC1(dentry);

	if (FUNC2(dentry)) {
		res = FUNC0(FUNC3(dentry));
		if (!res)
			res = inode->i_op->get_link(dentry, inode, done);
	}
	return res;
}