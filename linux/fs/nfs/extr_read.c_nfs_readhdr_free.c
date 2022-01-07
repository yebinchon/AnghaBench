
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int dummy; } ;


 int kmem_cache_free (int ,struct nfs_pgio_header*) ;
 int nfs_rdata_cachep ;

__attribute__((used)) static void nfs_readhdr_free(struct nfs_pgio_header *rhdr)
{
 kmem_cache_free(nfs_rdata_cachep, rhdr);
}
