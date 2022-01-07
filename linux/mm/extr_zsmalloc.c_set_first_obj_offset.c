
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int units; } ;



__attribute__((used)) static inline void set_first_obj_offset(struct page *page, int offset)
{
 page->units = offset;
}
