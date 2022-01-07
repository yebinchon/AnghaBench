
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_file; TYPE_1__* vm_ops; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int page_mkwrite; } ;


 int PageAnon (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int balance_dirty_pages_ratelimited (struct address_space*) ;
 int file_update_time (int ) ;
 struct address_space* page_rmapping (struct page*) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void fault_dirty_shared_page(struct vm_area_struct *vma,
        struct page *page)
{
 struct address_space *mapping;
 bool dirtied;
 bool page_mkwrite = vma->vm_ops && vma->vm_ops->page_mkwrite;

 dirtied = set_page_dirty(page);
 VM_BUG_ON_PAGE(PageAnon(page), page);






 mapping = page_rmapping(page);
 unlock_page(page);

 if ((dirtied || page_mkwrite) && mapping) {




  balance_dirty_pages_ratelimited(mapping);
 }

 if (!page_mkwrite)
  file_update_time(vma->vm_file);
}
