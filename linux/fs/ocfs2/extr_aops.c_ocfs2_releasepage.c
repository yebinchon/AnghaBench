
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int page_has_buffers (struct page*) ;
 int try_to_free_buffers (struct page*) ;

__attribute__((used)) static int ocfs2_releasepage(struct page *page, gfp_t wait)
{
 if (!page_has_buffers(page))
  return 0;
 return try_to_free_buffers(page);
}
