
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;

__attribute__((used)) static void dma_virt_free(struct device *dev, size_t size,
     void *cpu_addr, dma_addr_t dma_addr,
     unsigned long attrs)
{
 free_pages((unsigned long)cpu_addr, get_order(size));
}
