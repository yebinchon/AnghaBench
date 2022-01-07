
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_devres {int attrs; int dma_handle; int vaddr; int size; } ;
struct device {int dummy; } ;


 int dma_free_attrs (struct device*,int ,int ,int ,int ) ;

__attribute__((used)) static void dmam_release(struct device *dev, void *res)
{
 struct dma_devres *this = res;

 dma_free_attrs(dev, this->size, this->vaddr, this->dma_handle,
   this->attrs);
}
