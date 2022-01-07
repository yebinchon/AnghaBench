
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_page {scalar_t__ in_use; } ;



__attribute__((used)) static inline bool is_page_busy(struct dma_page *page)
{
 return page->in_use != 0;
}
