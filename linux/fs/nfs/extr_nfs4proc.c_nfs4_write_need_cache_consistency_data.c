
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int inode; int * dreq; int * ds_clp; } ;


 int FMODE_READ ;
 scalar_t__ nfs4_have_delegation (int ,int ) ;

__attribute__((used)) static
bool nfs4_write_need_cache_consistency_data(struct nfs_pgio_header *hdr)
{

 if (hdr->ds_clp != ((void*)0) || hdr->dreq != ((void*)0))
  return 0;



 return nfs4_have_delegation(hdr->inode, FMODE_READ) == 0;
}
