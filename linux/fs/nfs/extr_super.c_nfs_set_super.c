
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_dev; int s_d_op; struct nfs_server* s_fs_info; int s_flags; } ;
struct nfs_server {int s_dev; TYPE_1__* nfs_client; } ;
struct nfs_sb_mountdata {int mntflags; struct nfs_server* server; } ;
struct TYPE_4__ {int dentry_ops; } ;
struct TYPE_3__ {TYPE_2__* rpc_ops; } ;


 int set_anon_super (struct super_block*,struct nfs_server*) ;

__attribute__((used)) static int nfs_set_super(struct super_block *s, void *data)
{
 struct nfs_sb_mountdata *sb_mntdata = data;
 struct nfs_server *server = sb_mntdata->server;
 int ret;

 s->s_flags = sb_mntdata->mntflags;
 s->s_fs_info = server;
 s->s_d_op = server->nfs_client->rpc_ops->dentry_ops;
 ret = set_anon_super(s, server);
 if (ret == 0)
  server->s_dev = s->s_dev;
 return ret;
}
