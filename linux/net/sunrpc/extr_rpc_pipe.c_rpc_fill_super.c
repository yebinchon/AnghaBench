
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_time_gran; struct dentry* s_root; int * s_d_op; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; struct net* s_fs_info; } ;
struct sunrpc_net {int pipefs_sb_lock; struct super_block* pipefs_sb; int gssd_dummy; } ;
struct TYPE_2__ {int inum; } ;
struct net {TYPE_1__ ns; } ;
struct inode {int dummy; } ;
struct fs_context {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int NET_NAME (struct net*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct dentry*) ;
 int RPCAUTH_GSSMAGIC ;
 int RPCAUTH_RootEOF ;
 int RPCAUTH_lockd ;
 int RPC_PIPEFS_MOUNT ;
 int RPC_PIPEFS_UMOUNT ;
 int S_IFDIR ;
 int __rpc_depopulate (struct dentry*,int ,int ,int ) ;
 int blocking_notifier_call_chain (int *,int ,struct super_block*) ;
 struct dentry* d_make_root (struct inode*) ;
 int dprintk (char*,int ,int ) ;
 int files ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 struct inode* rpc_get_inode (struct super_block*,int) ;
 int rpc_gssd_dummy_depopulate (struct dentry*) ;
 struct dentry* rpc_gssd_dummy_populate (struct dentry*,int ) ;
 int rpc_pipefs_notifier_list ;
 scalar_t__ rpc_populate (struct dentry*,int ,int ,int ,int *) ;
 int s_ops ;
 int simple_dentry_operations ;
 int sunrpc_net_id ;

__attribute__((used)) static int
rpc_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct inode *inode;
 struct dentry *root, *gssd_dentry;
 struct net *net = sb->s_fs_info;
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 int err;

 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = RPCAUTH_GSSMAGIC;
 sb->s_op = &s_ops;
 sb->s_d_op = &simple_dentry_operations;
 sb->s_time_gran = 1;

 inode = rpc_get_inode(sb, S_IFDIR | 0555);
 sb->s_root = root = d_make_root(inode);
 if (!root)
  return -ENOMEM;
 if (rpc_populate(root, files, RPCAUTH_lockd, RPCAUTH_RootEOF, ((void*)0)))
  return -ENOMEM;

 gssd_dentry = rpc_gssd_dummy_populate(root, sn->gssd_dummy);
 if (IS_ERR(gssd_dentry)) {
  __rpc_depopulate(root, files, RPCAUTH_lockd, RPCAUTH_RootEOF);
  return PTR_ERR(gssd_dentry);
 }

 dprintk("RPC:       sending pipefs MOUNT notification for net %x%s\n",
  net->ns.inum, NET_NAME(net));
 mutex_lock(&sn->pipefs_sb_lock);
 sn->pipefs_sb = sb;
 err = blocking_notifier_call_chain(&rpc_pipefs_notifier_list,
        RPC_PIPEFS_MOUNT,
        sb);
 if (err)
  goto err_depopulate;
 mutex_unlock(&sn->pipefs_sb_lock);
 return 0;

err_depopulate:
 rpc_gssd_dummy_depopulate(gssd_dentry);
 blocking_notifier_call_chain(&rpc_pipefs_notifier_list,
        RPC_PIPEFS_UMOUNT,
        sb);
 sn->pipefs_sb = ((void*)0);
 __rpc_depopulate(root, files, RPCAUTH_lockd, RPCAUTH_RootEOF);
 mutex_unlock(&sn->pipefs_sb_lock);
 return err;
}
