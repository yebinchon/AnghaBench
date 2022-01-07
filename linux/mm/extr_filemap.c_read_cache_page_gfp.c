
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 struct page* do_read_cache_page (struct address_space*,int ,int *,int *,int ) ;

struct page *read_cache_page_gfp(struct address_space *mapping,
    pgoff_t index,
    gfp_t gfp)
{
 return do_read_cache_page(mapping, index, ((void*)0), ((void*)0), gfp);
}
