
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct inmem_pages {int list; struct page* page; } ;
struct TYPE_2__ {int inmem_lock; int inmem_pages; } ;


 scalar_t__ ATOMIC_WRITTEN_PAGE ;
 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_INMEM_PAGES ;
 int F2FS_I_SB (struct inode*) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int INMEM ;
 struct inmem_pages* f2fs_kmem_cache_alloc (int ,int ) ;
 int f2fs_set_page_private (struct page*,unsigned long) ;
 int f2fs_trace_pid (struct page*) ;
 int get_page (struct page*) ;
 int inc_page_count (int ,int ) ;
 int inmem_entry_slab ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_f2fs_register_inmem_page (struct page*,int ) ;

void f2fs_register_inmem_page(struct inode *inode, struct page *page)
{
 struct inmem_pages *new;

 f2fs_trace_pid(page);

 f2fs_set_page_private(page, (unsigned long)ATOMIC_WRITTEN_PAGE);

 new = f2fs_kmem_cache_alloc(inmem_entry_slab, GFP_NOFS);


 new->page = page;
 INIT_LIST_HEAD(&new->list);


 get_page(page);
 mutex_lock(&F2FS_I(inode)->inmem_lock);
 list_add_tail(&new->list, &F2FS_I(inode)->inmem_pages);
 inc_page_count(F2FS_I_SB(inode), F2FS_INMEM_PAGES);
 mutex_unlock(&F2FS_I(inode)->inmem_lock);

 trace_f2fs_register_inmem_page(page, INMEM);
}
