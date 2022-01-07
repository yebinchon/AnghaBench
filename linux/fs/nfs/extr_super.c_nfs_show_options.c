
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct nfs_server {TYPE_1__* nfs_client; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {int cl_rpcclient; } ;


 struct nfs_server* NFS_SB (int ) ;
 int RPC_DISPLAY_ADDR ;
 int nfs_show_mount_options (struct seq_file*,struct nfs_server*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rpc_peeraddr2str (int ,int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

int nfs_show_options(struct seq_file *m, struct dentry *root)
{
 struct nfs_server *nfss = NFS_SB(root->d_sb);

 nfs_show_mount_options(m, nfss, 0);

 rcu_read_lock();
 seq_printf(m, ",addr=%s",
   rpc_peeraddr2str(nfss->nfs_client->cl_rpcclient,
       RPC_DISPLAY_ADDR));
 rcu_read_unlock();

 return 0;
}
