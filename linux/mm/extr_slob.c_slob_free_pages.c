
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* reclaim_state; } ;
struct TYPE_3__ {int reclaimed_slab; } ;


 int NR_SLAB_UNRECLAIMABLE ;
 int __free_pages (struct page*,int) ;
 TYPE_2__* current ;
 int mod_node_page_state (int ,int ,int) ;
 int page_pgdat (struct page*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void slob_free_pages(void *b, int order)
{
 struct page *sp = virt_to_page(b);

 if (current->reclaim_state)
  current->reclaim_state->reclaimed_slab += 1 << order;

 mod_node_page_state(page_pgdat(sp), NR_SLAB_UNRECLAIMABLE,
       -(1 << order));
 __free_pages(sp, order);
}
