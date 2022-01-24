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
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int (* lookup ) (struct inode*,int /*<<< orphan*/ *,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ESTALE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct nfs4_label* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_label*) ; 
 struct nfs_fattr* FUNC6 () ; 
 struct nfs_fh* FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct nfs_fh*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_fh*) ; 
 int FUNC12 (struct inode*,struct dentry*,struct inode*,int) ; 
 scalar_t__ FUNC13 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct nfs_fattr*,struct nfs4_label*) ; 
 int FUNC17 (struct inode*,int /*<<< orphan*/ *,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ; 

__attribute__((used)) static int
FUNC18(struct inode *dir, struct dentry *dentry,
			     struct inode *inode)
{
	struct nfs_fh *fhandle;
	struct nfs_fattr *fattr;
	struct nfs4_label *label;
	int ret;

	ret = -ENOMEM;
	fhandle = FUNC7();
	fattr = FUNC6();
	label = FUNC4(FUNC3(inode), GFP_KERNEL);
	if (fhandle == NULL || fattr == NULL || FUNC0(label))
		goto out;

	ret = FUNC2(dir)->lookup(dir, &dentry->d_name, fhandle, fattr, label);
	if (ret < 0) {
		if (ret == -ESTALE || ret == -ENOENT)
			ret = 0;
		goto out;
	}
	ret = 0;
	if (FUNC8(FUNC1(inode), fhandle))
		goto out;
	if (FUNC13(inode, fattr) < 0)
		goto out;

	FUNC16(inode, fattr, label);
	FUNC15(dentry, FUNC14(dir));

	/* set a readdirplus hint that we had a cache miss */
	FUNC9(dir);
	ret = 1;
out:
	FUNC10(fattr);
	FUNC11(fhandle);
	FUNC5(label);
	return FUNC12(dir, dentry, inode, ret);
}