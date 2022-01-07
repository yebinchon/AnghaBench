
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_data {int pages; } ;


 int GFP_NOIO ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 struct nfs_commit_data* kmem_cache_alloc (int ,int) ;
 struct nfs_commit_data* mempool_alloc (int ,int) ;
 int memset (struct nfs_commit_data*,int ,int) ;
 int nfs_cdata_cachep ;
 int nfs_commit_mempool ;

struct nfs_commit_data *nfs_commitdata_alloc(bool never_fail)
{
 struct nfs_commit_data *p;

 if (never_fail)
  p = mempool_alloc(nfs_commit_mempool, GFP_NOIO);
 else {





  p = mempool_alloc(nfs_commit_mempool, GFP_NOWAIT);
  if (!p)
   p = kmem_cache_alloc(nfs_cdata_cachep, GFP_NOIO |
          __GFP_NOWARN | __GFP_NORETRY);
  if (!p)
   return ((void*)0);
 }

 memset(p, 0, sizeof(*p));
 INIT_LIST_HEAD(&p->pages);
 return p;
}
