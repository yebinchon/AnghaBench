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
struct inode {scalar_t__ i_nlink; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVL_INDEX ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct cred* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 

void FUNC6(struct dentry *dentry)
{
	struct inode *inode = FUNC0(dentry);

	if (FUNC4(OVL_INDEX, inode) && inode->i_nlink == 0) {
		const struct cred *old_cred;

		old_cred = FUNC3(dentry->d_sb);
		FUNC1(dentry);
		FUNC5(old_cred);
	}

	FUNC2(inode);
}