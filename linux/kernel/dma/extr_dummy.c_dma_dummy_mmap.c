
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ENXIO ;

__attribute__((used)) static int dma_dummy_mmap(struct device *dev, struct vm_area_struct *vma,
  void *cpu_addr, dma_addr_t dma_addr, size_t size,
  unsigned long attrs)
{
 return -ENXIO;
}
