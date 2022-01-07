
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct rpc_clnt {int dummy; } ;
struct nfs_server {struct rpc_clnt* client; struct rpc_clnt* client_acl; } ;


 int IS_ERR (struct rpc_clnt*) ;
 struct nfs_server* NFS_SB (struct super_block*) ;
 int rpc_killall_tasks (struct rpc_clnt*) ;

void nfs_umount_begin(struct super_block *sb)
{
 struct nfs_server *server;
 struct rpc_clnt *rpc;

 server = NFS_SB(sb);

 rpc = server->client_acl;
 if (!IS_ERR(rpc))
  rpc_killall_tasks(rpc);
 rpc = server->client;
 if (!IS_ERR(rpc))
  rpc_killall_tasks(rpc);
}
