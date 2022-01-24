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
struct svc_rqst {int dummy; } ;
struct posix_acl {int a_count; } ;
struct nfs4_acl {scalar_t__ naces; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 unsigned int NFS4_ACL_DIR ; 
 unsigned int NFS4_ACL_TYPE_DEFAULT ; 
 int FUNC1 (struct posix_acl*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct posix_acl*,struct nfs4_acl*,unsigned int) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 struct posix_acl* FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 struct nfs4_acl* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct posix_acl* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct posix_acl*) ; 

int
FUNC10(struct svc_rqst *rqstp, struct dentry *dentry,
		struct nfs4_acl **acl)
{
	struct inode *inode = FUNC4(dentry);
	int error = 0;
	struct posix_acl *pacl = NULL, *dpacl = NULL;
	unsigned int flags = 0;
	int size = 0;

	pacl = FUNC5(inode, ACL_TYPE_ACCESS);
	if (!pacl)
		pacl = FUNC8(inode->i_mode, GFP_KERNEL);

	if (FUNC0(pacl))
		return FUNC1(pacl);

	/* allocate for worst case: one (deny, allow) pair each: */
	size += 2 * pacl->a_count;

	if (FUNC2(inode->i_mode)) {
		flags = NFS4_ACL_DIR;
		dpacl = FUNC5(inode, ACL_TYPE_DEFAULT);
		if (FUNC0(dpacl)) {
			error = FUNC1(dpacl);
			goto rel_pacl;
		}

		if (dpacl)
			size += 2 * dpacl->a_count;
	}

	*acl = FUNC6(FUNC7(size), GFP_KERNEL);
	if (*acl == NULL) {
		error = -ENOMEM;
		goto out;
	}
	(*acl)->naces = 0;

	FUNC3(pacl, *acl, flags & ~NFS4_ACL_TYPE_DEFAULT);

	if (dpacl)
		FUNC3(dpacl, *acl, flags | NFS4_ACL_TYPE_DEFAULT);

out:
	FUNC9(dpacl);
rel_pacl:
	FUNC9(pacl);
	return error;
}