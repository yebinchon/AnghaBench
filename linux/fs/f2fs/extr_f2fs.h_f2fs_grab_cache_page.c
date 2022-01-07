
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int AOP_FLAG_NOFS ;
 int CONFIG_F2FS_FAULT_INJECTION ;
 int F2FS_M_SB (struct address_space*) ;
 int FAULT_PAGE_ALLOC ;
 int FGP_ACCESSED ;
 int FGP_LOCK ;
 scalar_t__ IS_ENABLED (int ) ;
 int f2fs_show_injection_info (int ) ;
 struct page* find_get_page_flags (struct address_space*,int ,int) ;
 struct page* find_lock_page (struct address_space*,int ) ;
 struct page* grab_cache_page (struct address_space*,int ) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int ,int ) ;
 scalar_t__ time_to_inject (int ,int ) ;

__attribute__((used)) static inline struct page *f2fs_grab_cache_page(struct address_space *mapping,
      pgoff_t index, bool for_write)
{
 struct page *page;

 if (IS_ENABLED(CONFIG_F2FS_FAULT_INJECTION)) {
  if (!for_write)
   page = find_get_page_flags(mapping, index,
       FGP_LOCK | FGP_ACCESSED);
  else
   page = find_lock_page(mapping, index);
  if (page)
   return page;

  if (time_to_inject(F2FS_M_SB(mapping), FAULT_PAGE_ALLOC)) {
   f2fs_show_injection_info(FAULT_PAGE_ALLOC);
   return ((void*)0);
  }
 }

 if (!for_write)
  return grab_cache_page(mapping, index);
 return grab_cache_page_write_begin(mapping, index, AOP_FLAG_NOFS);
}
