
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int PagePrivate (struct page*) ;

__attribute__((used)) static int orangefs_releasepage(struct page *page, gfp_t foo)
{
 return !PagePrivate(page);
}
