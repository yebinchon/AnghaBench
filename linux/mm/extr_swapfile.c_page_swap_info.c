
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;


 int page_private (struct page*) ;
 struct swap_info_struct* swp_swap_info (TYPE_1__) ;

struct swap_info_struct *page_swap_info(struct page *page)
{
 swp_entry_t entry = { .val = page_private(page) };
 return swp_swap_info(entry);
}
