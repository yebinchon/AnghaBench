
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {TYPE_1__* pnfs_curr_ld; } ;
struct nfs_open_context {int dummy; } ;
struct nfs4_opendata {scalar_t__ state; TYPE_2__* dir; } ;
struct TYPE_4__ {int d_inode; } ;
struct TYPE_3__ {int flags; } ;


 int NFS_CAP_LGOPEN ;
 struct nfs_server* NFS_SERVER (int ) ;
 int PNFS_LAYOUTGET_ON_OPEN ;
 int _lgopen_prepare_attached (struct nfs4_opendata*,struct nfs_open_context*) ;
 int _lgopen_prepare_floating (struct nfs4_opendata*,struct nfs_open_context*) ;
 int nfs_server_capable (int ,int ) ;
 scalar_t__ pnfs_enabled_sb (struct nfs_server*) ;

void pnfs_lgopen_prepare(struct nfs4_opendata *data,
    struct nfs_open_context *ctx)
{
 struct nfs_server *server = NFS_SERVER(data->dir->d_inode);

 if (!(pnfs_enabled_sb(server) &&
       server->pnfs_curr_ld->flags & PNFS_LAYOUTGET_ON_OPEN))
  return;

 if (!nfs_server_capable(data->dir->d_inode, NFS_CAP_LGOPEN))
  return;
 if (data->state)
  _lgopen_prepare_attached(data, ctx);
 else
  _lgopen_prepare_floating(data, ctx);
}
