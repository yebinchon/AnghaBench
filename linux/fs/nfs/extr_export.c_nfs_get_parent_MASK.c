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
struct super_block {int dummy; } ;
struct nfs_server {TYPE_1__* nfs_client; } ;
struct nfs_rpc_ops {int (* lookupp ) (struct inode*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;} ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct nfs_rpc_ops* rpc_ops; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (struct nfs4_label*) ; 
 struct dentry* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct nfs4_label*) ; 
 struct nfs_server* FUNC3 (struct super_block*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct inode*) ; 
 struct nfs4_label* FUNC6 (struct nfs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs4_label*) ; 
 struct nfs_fattr* FUNC8 () ; 
 struct inode* FUNC9 (struct super_block*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_fattr*) ; 
 int FUNC11 (struct inode*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ; 

__attribute__((used)) static struct dentry *
FUNC12(struct dentry *dentry)
{
	int ret;
	struct inode *inode = FUNC4(dentry), *pinode;
	struct super_block *sb = inode->i_sb;
	struct nfs_server *server = FUNC3(sb);
	struct nfs_fattr *fattr = NULL;
	struct nfs4_label *label = NULL;
	struct dentry *parent;
	struct nfs_rpc_ops const *ops = server->nfs_client->rpc_ops;
	struct nfs_fh fh;

	if (!ops->lookupp)
		return FUNC1(-EACCES);

	fattr = FUNC8();
	if (fattr == NULL) {
		parent = FUNC1(-ENOMEM);
		goto out;
	}

	label = FUNC6(server, GFP_KERNEL);
	if (FUNC2(label)) {
		parent = FUNC0(label);
		goto out_free_fattr;
	}

	ret = ops->lookupp(inode, &fh, fattr, label);
	if (ret) {
		parent = FUNC1(ret);
		goto out_free_label;
	}

	pinode = FUNC9(sb, &fh, fattr, label);
	parent = FUNC5(pinode);
out_free_label:
	FUNC7(label);
out_free_fattr:
	FUNC10(fattr);
out:
	return parent;
}