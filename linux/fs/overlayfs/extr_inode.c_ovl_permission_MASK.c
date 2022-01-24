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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int MAY_APPEND ; 
 int MAY_NOT_BLOCK ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct inode*,int) ; 
 int FUNC2 (struct inode*,int) ; 
 struct inode* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*) ; 
 struct cred* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct inode *inode, int mask)
{
	struct inode *upperinode = FUNC4(inode);
	struct inode *realinode = upperinode ?: FUNC3(inode);
	const struct cred *old_cred;
	int err;

	/* Careful in RCU walk mode */
	if (!realinode) {
		FUNC0(!(mask & MAY_NOT_BLOCK));
		return -ECHILD;
	}

	/*
	 * Check overlay inode with the creds of task and underlying inode
	 * with creds of mounter
	 */
	err = FUNC1(inode, mask);
	if (err)
		return err;

	old_cred = FUNC5(inode->i_sb);
	if (!upperinode &&
	    !FUNC7(realinode->i_mode) && mask & MAY_WRITE) {
		mask &= ~(MAY_WRITE | MAY_APPEND);
		/* Make sure mounter can read file for copy up later */
		mask |= MAY_READ;
	}
	err = FUNC2(realinode, mask);
	FUNC6(old_cred);

	return err;
}