
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 unsigned char PageUptodate (struct page*) ;
 struct page* find_get_entry (struct address_space*,int ) ;
 struct page* find_get_page (struct address_space*,int ) ;
 struct swap_info_struct* get_swap_device (int ) ;
 int put_page (struct page*) ;
 int put_swap_device (struct swap_info_struct*) ;
 int radix_to_swp_entry (struct page*) ;
 scalar_t__ shmem_mapping (struct address_space*) ;
 struct address_space* swap_address_space (int ) ;
 int swp_offset (int ) ;
 scalar_t__ xa_is_value (struct page*) ;

__attribute__((used)) static unsigned char mincore_page(struct address_space *mapping, pgoff_t pgoff)
{
 unsigned char present = 0;
 struct page *page;
 page = find_get_page(mapping, pgoff);

 if (page) {
  present = PageUptodate(page);
  put_page(page);
 }

 return present;
}
