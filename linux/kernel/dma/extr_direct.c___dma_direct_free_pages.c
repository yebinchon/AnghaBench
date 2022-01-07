
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;


 int dma_free_contiguous (struct device*,struct page*,size_t) ;

void __dma_direct_free_pages(struct device *dev, size_t size, struct page *page)
{
 dma_free_contiguous(dev, page, size);
}
