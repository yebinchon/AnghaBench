
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageChecked (struct page*) ;

__attribute__((used)) static inline int is_inline_node(struct page *page)
{
 return PageChecked(page);
}
