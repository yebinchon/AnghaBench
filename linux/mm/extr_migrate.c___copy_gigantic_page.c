
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int cond_resched () ;
 int copy_highpage (struct page*,struct page*) ;
 struct page* mem_map_next (struct page*,struct page*,int) ;

__attribute__((used)) static void __copy_gigantic_page(struct page *dst, struct page *src,
    int nr_pages)
{
 int i;
 struct page *dst_base = dst;
 struct page *src_base = src;

 for (i = 0; i < nr_pages; ) {
  cond_resched();
  copy_highpage(dst, src);

  i++;
  dst = mem_map_next(dst, dst_base, i);
  src = mem_map_next(src, src_base, i);
 }
}
