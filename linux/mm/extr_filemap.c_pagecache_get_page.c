
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;
struct TYPE_2__ {struct address_space* mapping; } ;


 int EEXIST ;
 int FGP_ACCESSED ;
 int FGP_CREAT ;
 int FGP_FOR_MMAP ;
 int FGP_LOCK ;
 int FGP_NOFS ;
 int FGP_NOWAIT ;
 int FGP_WRITE ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __GFP_FS ;
 int __GFP_WRITE ;
 int __SetPageReferenced (struct page*) ;
 struct page* __page_cache_alloc (int ) ;
 int add_to_page_cache_lru (struct page*,struct address_space*,int ,int ) ;
 TYPE_1__* compound_head (struct page*) ;
 struct page* find_get_entry (struct address_space*,int ) ;
 int lock_page (struct page*) ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 int mark_page_accessed (struct page*) ;
 int put_page (struct page*) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 scalar_t__ xa_is_value (struct page*) ;

struct page *pagecache_get_page(struct address_space *mapping, pgoff_t offset,
 int fgp_flags, gfp_t gfp_mask)
{
 struct page *page;

repeat:
 page = find_get_entry(mapping, offset);
 if (xa_is_value(page))
  page = ((void*)0);
 if (!page)
  goto no_page;

 if (fgp_flags & FGP_LOCK) {
  if (fgp_flags & FGP_NOWAIT) {
   if (!trylock_page(page)) {
    put_page(page);
    return ((void*)0);
   }
  } else {
   lock_page(page);
  }


  if (unlikely(compound_head(page)->mapping != mapping)) {
   unlock_page(page);
   put_page(page);
   goto repeat;
  }
  VM_BUG_ON_PAGE(page->index != offset, page);
 }

 if (fgp_flags & FGP_ACCESSED)
  mark_page_accessed(page);

no_page:
 if (!page && (fgp_flags & FGP_CREAT)) {
  int err;
  if ((fgp_flags & FGP_WRITE) && mapping_cap_account_dirty(mapping))
   gfp_mask |= __GFP_WRITE;
  if (fgp_flags & FGP_NOFS)
   gfp_mask &= ~__GFP_FS;

  page = __page_cache_alloc(gfp_mask);
  if (!page)
   return ((void*)0);

  if (WARN_ON_ONCE(!(fgp_flags & (FGP_LOCK | FGP_FOR_MMAP))))
   fgp_flags |= FGP_LOCK;


  if (fgp_flags & FGP_ACCESSED)
   __SetPageReferenced(page);

  err = add_to_page_cache_lru(page, mapping, offset, gfp_mask);
  if (unlikely(err)) {
   put_page(page);
   page = ((void*)0);
   if (err == -EEXIST)
    goto repeat;
  }





  if (page && (fgp_flags & FGP_FOR_MMAP))
   unlock_page(page);
 }

 return page;
}
