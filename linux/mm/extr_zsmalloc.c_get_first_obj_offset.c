
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int units; } ;



__attribute__((used)) static inline int get_first_obj_offset(struct page *page)
{
 return page->units;
}
