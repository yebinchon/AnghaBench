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
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_FS_POSIX_ACL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct posix_acl* FUNC2 (struct inode*,int) ; 
 struct inode* FUNC3 (struct inode*) ; 
 struct cred* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 

struct posix_acl *FUNC6(struct inode *inode, int type)
{
	struct inode *realinode = FUNC3(inode);
	const struct cred *old_cred;
	struct posix_acl *acl;

	if (!FUNC0(CONFIG_FS_POSIX_ACL) || !FUNC1(realinode))
		return NULL;

	old_cred = FUNC4(inode->i_sb);
	acl = FUNC2(realinode, type);
	FUNC5(old_cred);

	return acl;
}