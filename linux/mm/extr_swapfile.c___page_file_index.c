
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
typedef int pgoff_t ;


 int page_private (struct page*) ;
 int swp_offset (TYPE_1__) ;

pgoff_t __page_file_index(struct page *page)
{
 swp_entry_t swap = { .val = page_private(page) };
 return swp_offset(swap);
}
