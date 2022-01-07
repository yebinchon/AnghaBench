
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef uintptr_t dma_addr_t ;


 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (size_t) ;

__attribute__((used)) static void *dma_virt_alloc(struct device *dev, size_t size,
       dma_addr_t *dma_handle, gfp_t gfp,
       unsigned long attrs)
{
 void *ret;

 ret = (void *)__get_free_pages(gfp | __GFP_ZERO, get_order(size));
 if (ret)
  *dma_handle = (uintptr_t)ret;
 return ret;
}
