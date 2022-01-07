
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int * mapping; } ;



__attribute__((used)) static inline void ClearPageHugeTemporary(struct page *page)
{
 page[2].mapping = ((void*)0);
}
