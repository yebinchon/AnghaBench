
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int rw_mode; } ;


 int FMODE_READ ;
 int GFP_KERNEL ;
 struct nfs_pgio_header* kmem_cache_zalloc (int ,int ) ;
 int nfs_rdata_cachep ;

__attribute__((used)) static struct nfs_pgio_header *nfs_readhdr_alloc(void)
{
 struct nfs_pgio_header *p = kmem_cache_zalloc(nfs_rdata_cachep, GFP_KERNEL);

 if (p)
  p->rw_mode = FMODE_READ;
 return p;
}
