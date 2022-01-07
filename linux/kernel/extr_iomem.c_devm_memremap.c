
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int resource_size_t ;


 int ENOMEM ;
 int ENXIO ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_to_node (struct device*) ;
 int devm_memremap_release ;
 int devres_add (struct device*,void**) ;
 void** devres_alloc_node (int ,int,int ,int ) ;
 int devres_free (void**) ;
 void* memremap (int ,size_t,unsigned long) ;

void *devm_memremap(struct device *dev, resource_size_t offset,
  size_t size, unsigned long flags)
{
 void **ptr, *addr;

 ptr = devres_alloc_node(devm_memremap_release, sizeof(*ptr), GFP_KERNEL,
   dev_to_node(dev));
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 addr = memremap(offset, size, flags);
 if (addr) {
  *ptr = addr;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
  return ERR_PTR(-ENXIO);
 }

 return addr;
}
