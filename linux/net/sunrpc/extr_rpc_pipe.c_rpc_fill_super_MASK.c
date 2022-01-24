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
struct super_block {int s_time_gran; struct dentry* s_root; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; struct net* s_fs_info; } ;
struct sunrpc_net {int /*<<< orphan*/  pipefs_sb_lock; struct super_block* pipefs_sb; int /*<<< orphan*/  gssd_dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  inum; } ;
struct net {TYPE_1__ ns; } ;
struct inode {int dummy; } ;
struct fs_context {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  RPCAUTH_GSSMAGIC ; 
 int /*<<< orphan*/  RPCAUTH_RootEOF ; 
 int /*<<< orphan*/  RPCAUTH_lockd ; 
 int /*<<< orphan*/  RPC_PIPEFS_MOUNT ; 
 int /*<<< orphan*/  RPC_PIPEFS_UMOUNT ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct super_block*) ; 
 struct dentry* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  files ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct sunrpc_net* FUNC9 (struct net*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC10 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 struct dentry* FUNC12 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_pipefs_notifier_list ; 
 scalar_t__ FUNC13 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_ops ; 
 int /*<<< orphan*/  simple_dentry_operations ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static int
FUNC14(struct super_block *sb, struct fs_context *fc)
{
	struct inode *inode;
	struct dentry *root, *gssd_dentry;
	struct net *net = sb->s_fs_info;
	struct sunrpc_net *sn = FUNC9(net, sunrpc_net_id);
	int err;

	sb->s_blocksize = PAGE_SIZE;
	sb->s_blocksize_bits = PAGE_SHIFT;
	sb->s_magic = RPCAUTH_GSSMAGIC;
	sb->s_op = &s_ops;
	sb->s_d_op = &simple_dentry_operations;
	sb->s_time_gran = 1;

	inode = FUNC10(sb, S_IFDIR | 0555);
	sb->s_root = root = FUNC5(inode);
	if (!root)
		return -ENOMEM;
	if (FUNC13(root, files, RPCAUTH_lockd, RPCAUTH_RootEOF, NULL))
		return -ENOMEM;

	gssd_dentry = FUNC12(root, sn->gssd_dummy);
	if (FUNC0(gssd_dentry)) {
		FUNC3(root, files, RPCAUTH_lockd, RPCAUTH_RootEOF);
		return FUNC2(gssd_dentry);
	}

	FUNC6("RPC:       sending pipefs MOUNT notification for net %x%s\n",
		net->ns.inum, FUNC1(net));
	FUNC7(&sn->pipefs_sb_lock);
	sn->pipefs_sb = sb;
	err = FUNC4(&rpc_pipefs_notifier_list,
					   RPC_PIPEFS_MOUNT,
					   sb);
	if (err)
		goto err_depopulate;
	FUNC8(&sn->pipefs_sb_lock);
	return 0;

err_depopulate:
	FUNC11(gssd_dentry);
	FUNC4(&rpc_pipefs_notifier_list,
					   RPC_PIPEFS_UMOUNT,
					   sb);
	sn->pipefs_sb = NULL;
	FUNC3(root, files, RPCAUTH_lockd, RPCAUTH_RootEOF);
	FUNC8(&sn->pipefs_sb_lock);
	return err;
}