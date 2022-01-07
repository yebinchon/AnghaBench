
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int sector_t ;


 int PAGE_SHIFT ;
 scalar_t__ __page_file_index (struct page*) ;

__attribute__((used)) static sector_t swap_page_sector(struct page *page)
{
 return (sector_t)__page_file_index(page) << (PAGE_SHIFT - 9);
}
