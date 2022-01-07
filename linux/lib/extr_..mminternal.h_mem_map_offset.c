
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int MAX_ORDER_NR_PAGES ;
 struct page* nth_page (struct page*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct page *mem_map_offset(struct page *base, int offset)
{
 if (unlikely(offset >= MAX_ORDER_NR_PAGES))
  return nth_page(base, offset);
 return base + offset;
}
