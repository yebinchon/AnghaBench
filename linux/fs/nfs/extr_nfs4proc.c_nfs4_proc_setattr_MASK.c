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
struct nfs_open_context {struct cred* cred; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_file; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_FILE ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_OPEN ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct nfs4_label*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct cred const*,struct nfs_fattr*,struct iattr*,struct nfs_open_context*,int /*<<< orphan*/ *,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct nfs4_label* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_fattr*) ; 
 struct nfs_open_context* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct iattr*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct nfs_fattr*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (struct inode*) ; 

__attribute__((used)) static int
FUNC15(struct dentry *dentry, struct nfs_fattr *fattr,
		  struct iattr *sattr)
{
	struct inode *inode = FUNC3(dentry);
	const struct cred *cred = NULL;
	struct nfs_open_context *ctx = NULL;
	struct nfs4_label *label = NULL;
	int status;

	if (FUNC14(inode) &&
	    sattr->ia_valid & ATTR_SIZE &&
	    sattr->ia_size < FUNC4(inode))
		FUNC13(inode);

	FUNC9(fattr);
	
	/* Deal with open(O_TRUNC) */
	if (sattr->ia_valid & ATTR_OPEN)
		sattr->ia_valid &= ~(ATTR_MTIME|ATTR_CTIME);

	/* Optimization: if the end result is no change, don't RPC */
	if ((sattr->ia_valid & ~(ATTR_FILE|ATTR_OPEN)) == 0)
		return 0;

	/* Search for an existing open(O_WRITE) file */
	if (sattr->ia_valid & ATTR_FILE) {

		ctx = FUNC10(sattr->ia_file);
		if (ctx)
			cred = ctx->cred;
	}

	label = FUNC7(FUNC1(inode), GFP_KERNEL);
	if (FUNC0(label))
		return FUNC2(label);

	/* Return any delegations if we're going to change ACLs */
	if ((sattr->ia_valid & (ATTR_MODE|ATTR_UID|ATTR_GID)) != 0)
		FUNC6(inode);

	status = FUNC5(inode, cred, fattr, sattr, ctx, NULL, label);
	if (status == 0) {
		FUNC11(inode, sattr, fattr);
		FUNC12(inode, fattr, label);
	}
	FUNC8(label);
	return status;
}