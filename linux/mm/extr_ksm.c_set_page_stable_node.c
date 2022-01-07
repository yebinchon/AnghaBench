
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stable_node {int dummy; } ;
struct page {void* mapping; } ;


 unsigned long PAGE_MAPPING_KSM ;

__attribute__((used)) static inline void set_page_stable_node(struct page *page,
     struct stable_node *stable_node)
{
 page->mapping = (void *)((unsigned long)stable_node | PAGE_MAPPING_KSM);
}
