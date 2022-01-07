
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int dummy; } ;


 int mempool_free (struct nfs_pgio_header*,int ) ;
 int nfs_wdata_mempool ;

__attribute__((used)) static void nfs_writehdr_free(struct nfs_pgio_header *hdr)
{
 mempool_free(hdr, nfs_wdata_mempool);
}
