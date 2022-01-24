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
struct nfs_inode {struct nfs4_cached_acl* nfs4_acl; } ;
struct nfs4_cached_acl {scalar_t__ cached; size_t len; int /*<<< orphan*/  data; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOENT ; 
 int ERANGE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline ssize_t FUNC4(struct inode *inode, char *buf, size_t buflen)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs4_cached_acl *acl;
	int ret = -ENOENT;

	FUNC2(&inode->i_lock);
	acl = nfsi->nfs4_acl;
	if (acl == NULL)
		goto out;
	if (buf == NULL) /* user is just asking for length */
		goto out_len;
	if (acl->cached == 0)
		goto out;
	ret = -ERANGE; /* see getxattr(2) man page */
	if (acl->len > buflen)
		goto out;
	FUNC1(buf, acl->data, acl->len);
out_len:
	ret = acl->len;
out:
	FUNC3(&inode->i_lock);
	return ret;
}