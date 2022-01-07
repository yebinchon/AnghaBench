
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct metapage {int dummy; } ;


 int SetPagePrivate (struct page*) ;
 int kmap (struct page*) ;
 int set_page_private (struct page*,unsigned long) ;

__attribute__((used)) static inline int insert_metapage(struct page *page, struct metapage *mp)
{
 if (mp) {
  set_page_private(page, (unsigned long)mp);
  SetPagePrivate(page);
  kmap(page);
 }
 return 0;
}
