
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dma_debug_disabled () ;
 int err_printk (struct device*,int *,char*,void const*,unsigned long) ;
 scalar_t__ is_vmalloc_addr (void const*) ;
 scalar_t__ unlikely (int ) ;
 int virt_addr_valid (void const*) ;

void debug_dma_map_single(struct device *dev, const void *addr,
       unsigned long len)
{
 if (unlikely(dma_debug_disabled()))
  return;

 if (!virt_addr_valid(addr))
  err_printk(dev, ((void*)0), "device driver maps memory from invalid area [addr=%p] [len=%lu]\n",
      addr, len);

 if (is_vmalloc_addr(addr))
  err_printk(dev, ((void*)0), "device driver maps memory from vmalloc area [addr=%p] [len=%lu]\n",
      addr, len);
}
