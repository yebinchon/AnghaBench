
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int dummy; } ;


 int GFP_KERNEL ;
 int file_slab ;
 struct nfs4_file* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct nfs4_file *nfsd4_alloc_file(void)
{
 return kmem_cache_alloc(file_slab, GFP_KERNEL);
}
