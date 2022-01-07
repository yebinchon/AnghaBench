
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {TYPE_1__* swap_file; } ;
struct TYPE_3__ {struct address_space* f_mapping; } ;


 TYPE_2__* page_swap_info (struct page*) ;

struct address_space *__page_file_mapping(struct page *page)
{
 return page_swap_info(page)->swap_file->f_mapping;
}
