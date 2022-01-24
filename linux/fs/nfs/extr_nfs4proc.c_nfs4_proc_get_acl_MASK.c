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
struct nfs_server {int dummy; } ;
struct inode {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int cache_validity; } ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int NFS_INO_INVALID_ACL ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,void*,size_t) ; 
 int FUNC3 (struct inode*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_server*) ; 
 int FUNC5 (struct nfs_server*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static ssize_t FUNC7(struct inode *inode, void *buf, size_t buflen)
{
	struct nfs_server *server = FUNC1(inode);
	int ret;

	if (!FUNC4(server))
		return -EOPNOTSUPP;
	ret = FUNC5(server, inode);
	if (ret < 0)
		return ret;
	if (FUNC0(inode)->cache_validity & NFS_INO_INVALID_ACL)
		FUNC6(inode);
	ret = FUNC3(inode, buf, buflen);
	if (ret != -ENOENT)
		/* -ENOENT is returned if there is no ACL or if there is an ACL
		 * but no cached acl data, just the acl length */
		return ret;
	return FUNC2(inode, buf, buflen);
}