
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int rsize; int wsize; int rpages; int wpages; int dtsize; int flags; int client; int clone_blksize; int time_delta; int maxfilesize; scalar_t__ acdirmax; scalar_t__ acdirmin; scalar_t__ acregmax; scalar_t__ acregmin; int wtmult; } ;
struct nfs_fsinfo {int rtpref; int wtpref; int rtmax; int wtmax; int dtpref; int clone_blksize; int time_delta; int maxfilesize; int wtmult; } ;


 void* NFS_MAX_FILE_IO_SIZE ;
 int NFS_MAX_READDIR_PAGES ;
 int NFS_MOUNT_NOAC ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int nfs_block_bits (int ,int *) ;
 void* nfs_block_size (int,int *) ;
 int rpc_max_payload (int ) ;
 int rpc_setbufsize (int ,int,int) ;

__attribute__((used)) static void nfs_server_set_fsinfo(struct nfs_server *server,
      struct nfs_fsinfo *fsinfo)
{
 unsigned long max_rpc_payload;


 if (server->rsize == 0)
  server->rsize = nfs_block_size(fsinfo->rtpref, ((void*)0));
 if (server->wsize == 0)
  server->wsize = nfs_block_size(fsinfo->wtpref, ((void*)0));

 if (fsinfo->rtmax >= 512 && server->rsize > fsinfo->rtmax)
  server->rsize = nfs_block_size(fsinfo->rtmax, ((void*)0));
 if (fsinfo->wtmax >= 512 && server->wsize > fsinfo->wtmax)
  server->wsize = nfs_block_size(fsinfo->wtmax, ((void*)0));

 max_rpc_payload = nfs_block_size(rpc_max_payload(server->client), ((void*)0));
 if (server->rsize > max_rpc_payload)
  server->rsize = max_rpc_payload;
 if (server->rsize > NFS_MAX_FILE_IO_SIZE)
  server->rsize = NFS_MAX_FILE_IO_SIZE;
 server->rpages = (server->rsize + PAGE_SIZE - 1) >> PAGE_SHIFT;

 if (server->wsize > max_rpc_payload)
  server->wsize = max_rpc_payload;
 if (server->wsize > NFS_MAX_FILE_IO_SIZE)
  server->wsize = NFS_MAX_FILE_IO_SIZE;
 server->wpages = (server->wsize + PAGE_SIZE - 1) >> PAGE_SHIFT;

 server->wtmult = nfs_block_bits(fsinfo->wtmult, ((void*)0));

 server->dtsize = nfs_block_size(fsinfo->dtpref, ((void*)0));
 if (server->dtsize > PAGE_SIZE * NFS_MAX_READDIR_PAGES)
  server->dtsize = PAGE_SIZE * NFS_MAX_READDIR_PAGES;
 if (server->dtsize > server->rsize)
  server->dtsize = server->rsize;

 if (server->flags & NFS_MOUNT_NOAC) {
  server->acregmin = server->acregmax = 0;
  server->acdirmin = server->acdirmax = 0;
 }

 server->maxfilesize = fsinfo->maxfilesize;

 server->time_delta = fsinfo->time_delta;

 server->clone_blksize = fsinfo->clone_blksize;

 rpc_setbufsize(server->client, server->wsize + 100, server->rsize + 100);
}
