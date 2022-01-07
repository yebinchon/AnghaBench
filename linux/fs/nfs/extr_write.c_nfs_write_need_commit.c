
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ committed; } ;
struct nfs_pgio_header {TYPE_1__ verf; int * lseg; } ;


 scalar_t__ NFS_DATA_SYNC ;
 scalar_t__ NFS_FILE_SYNC ;

int nfs_write_need_commit(struct nfs_pgio_header *hdr)
{
 if (hdr->verf.committed == NFS_DATA_SYNC)
  return hdr->lseg == ((void*)0);
 return hdr->verf.committed != NFS_FILE_SYNC;
}
