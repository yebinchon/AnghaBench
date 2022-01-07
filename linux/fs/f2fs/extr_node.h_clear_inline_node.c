
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageChecked (struct page*) ;

__attribute__((used)) static inline void clear_inline_node(struct page *page)
{
 ClearPageChecked(page);
}
