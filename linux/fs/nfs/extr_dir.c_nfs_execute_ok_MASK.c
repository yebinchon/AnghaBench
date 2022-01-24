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
struct nfs_server {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EACCES ; 
 int ECHILD ; 
 int MAY_NOT_BLOCK ; 
 int /*<<< orphan*/  NFS_INO_INVALID_OTHER ; 
 struct nfs_server* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs_server*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, int mask)
{
	struct nfs_server *server = FUNC0(inode);
	int ret = 0;

	if (FUNC1(inode->i_mode))
		return 0;
	if (FUNC4(inode, NFS_INO_INVALID_OTHER)) {
		if (mask & MAY_NOT_BLOCK)
			return -ECHILD;
		ret = FUNC2(server, inode);
	}
	if (ret == 0 && !FUNC3(inode))
		ret = -EACCES;
	return ret;
}