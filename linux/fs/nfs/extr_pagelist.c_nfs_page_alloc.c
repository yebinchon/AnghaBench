
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nfs_page* kmem_cache_zalloc (int ,int ) ;
 int nfs_page_cachep ;

__attribute__((used)) static inline struct nfs_page *
nfs_page_alloc(void)
{
 struct nfs_page *p = kmem_cache_zalloc(nfs_page_cachep, GFP_KERNEL);
 if (p)
  INIT_LIST_HEAD(&p->wb_list);
 return p;
}
