
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __GFP_NOMEMALLOC ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 struct page* alloc_page (int) ;
 int balloon_mapping_gfp_mask () ;

struct page *balloon_page_alloc(void)
{
 struct page *page = alloc_page(balloon_mapping_gfp_mask() |
           __GFP_NOMEMALLOC | __GFP_NORETRY |
           __GFP_NOWARN);
 return page;
}
