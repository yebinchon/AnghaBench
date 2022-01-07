
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct swap_info_struct {int flags; TYPE_1__* swap_file; } ;
struct page {int dummy; } ;
struct address_space {TYPE_2__* a_ops; } ;
struct TYPE_4__ {int (* set_page_dirty ) (struct page*) ;} ;
struct TYPE_3__ {struct address_space* f_mapping; } ;


 int PageSwapCache (struct page*) ;
 int SWP_FS ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __set_page_dirty_no_writeback (struct page*) ;
 struct swap_info_struct* page_swap_info (struct page*) ;
 int stub1 (struct page*) ;

int swap_set_page_dirty(struct page *page)
{
 struct swap_info_struct *sis = page_swap_info(page);

 if (sis->flags & SWP_FS) {
  struct address_space *mapping = sis->swap_file->f_mapping;

  VM_BUG_ON_PAGE(!PageSwapCache(page), page);
  return mapping->a_ops->set_page_dirty(page);
 } else {
  return __set_page_dirty_no_writeback(page);
 }
}
