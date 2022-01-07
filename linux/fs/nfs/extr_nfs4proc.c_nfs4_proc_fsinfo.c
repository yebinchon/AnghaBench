
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int pnfs_blksize; } ;
struct nfs_fsinfo {int blksize; int fattr; } ;
struct nfs_fh {int dummy; } ;


 int nfs4_do_fsinfo (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ;
 int nfs_fattr_init (int ) ;
 int set_pnfs_layoutdriver (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ;

__attribute__((used)) static int nfs4_proc_fsinfo(struct nfs_server *server, struct nfs_fh *fhandle, struct nfs_fsinfo *fsinfo)
{
 int error;

 nfs_fattr_init(fsinfo->fattr);
 error = nfs4_do_fsinfo(server, fhandle, fsinfo);
 if (error == 0) {

  server->pnfs_blksize = fsinfo->blksize;
  set_pnfs_layoutdriver(server, fhandle, fsinfo);
 }

 return error;
}
