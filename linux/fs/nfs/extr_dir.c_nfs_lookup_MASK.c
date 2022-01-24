#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct nfs4_label {int /*<<< orphan*/  d_sb; TYPE_1__ d_name; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; TYPE_1__ d_name; } ;
struct TYPE_7__ {int (* lookup ) (struct inode*,TYPE_1__*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;} ;
struct TYPE_6__ {scalar_t__ namelen; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct nfs4_label* FUNC0 (struct inode*) ; 
 struct nfs4_label* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ FUNC2 (struct nfs4_label*) ; 
 unsigned int LOOKUP_RENAME_TARGET ; 
 int /*<<< orphan*/  NFSIOS_VFSLOOKUP ; 
 TYPE_4__* FUNC3 (struct inode*) ; 
 TYPE_2__* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  VFS ; 
 struct nfs4_label* FUNC5 (struct inode*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct nfs4_label*) ; 
 struct nfs4_label* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs4_label*) ; 
 struct nfs_fattr* FUNC9 () ; 
 struct nfs_fh* FUNC10 () ; 
 struct inode* FUNC11 (int /*<<< orphan*/ ,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfs_fh*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct nfs4_label*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct inode*,TYPE_1__*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,struct nfs4_label*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,struct nfs4_label*,unsigned int,int) ; 
 scalar_t__ FUNC22 (int) ; 

struct dentry *FUNC23(struct inode *dir, struct dentry * dentry, unsigned int flags)
{
	struct dentry *res;
	struct inode *inode = NULL;
	struct nfs_fh *fhandle = NULL;
	struct nfs_fattr *fattr = NULL;
	struct nfs4_label *label = NULL;
	int error;

	FUNC6(VFS, "NFS: lookup(%pd2)\n", dentry);
	FUNC15(dir, NFSIOS_VFSLOOKUP);

	if (FUNC22(dentry->d_name.len > FUNC4(dir)->namelen))
		return FUNC1(-ENAMETOOLONG);

	/*
	 * If we're doing an exclusive create, optimize away the lookup
	 * but don't hash the dentry.
	 */
	if (FUNC16(dir, flags) || flags & LOOKUP_RENAME_TARGET)
		return NULL;

	res = FUNC1(-ENOMEM);
	fhandle = FUNC10();
	fattr = FUNC9();
	if (fhandle == NULL || fattr == NULL)
		goto out;

	label = FUNC7(FUNC4(dir), GFP_NOWAIT);
	if (FUNC2(label))
		goto out;

	FUNC20(dir, dentry, flags);
	error = FUNC3(dir)->lookup(dir, &dentry->d_name, fhandle, fattr, label);
	if (error == -ENOENT)
		goto no_entry;
	if (error < 0) {
		res = FUNC1(error);
		goto out_label;
	}
	inode = FUNC11(dentry->d_sb, fhandle, fattr, label);
	res = FUNC0(inode);
	if (FUNC2(res))
		goto out_label;

	/* Notify readdir to use READDIRPLUS */
	FUNC12(dir);

no_entry:
	res = FUNC5(inode, dentry);
	if (res != NULL) {
		if (FUNC2(res))
			goto out_label;
		dentry = res;
	}
	FUNC18(dentry, FUNC17(dir));
out_label:
	FUNC21(dir, dentry, flags, error);
	FUNC8(label);
out:
	FUNC13(fattr);
	FUNC14(fhandle);
	return res;
}