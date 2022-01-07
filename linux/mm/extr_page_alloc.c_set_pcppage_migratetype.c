
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;



__attribute__((used)) static inline void set_pcppage_migratetype(struct page *page, int migratetype)
{
 page->index = migratetype;
}
