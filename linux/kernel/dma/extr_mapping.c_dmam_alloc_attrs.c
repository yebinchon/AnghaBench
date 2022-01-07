
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_devres {size_t size; unsigned long attrs; int dma_handle; void* vaddr; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int devres_add (struct device*,struct dma_devres*) ;
 struct dma_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct dma_devres*) ;
 void* dma_alloc_attrs (struct device*,size_t,int *,int ,unsigned long) ;
 int dmam_release ;

void *dmam_alloc_attrs(struct device *dev, size_t size, dma_addr_t *dma_handle,
  gfp_t gfp, unsigned long attrs)
{
 struct dma_devres *dr;
 void *vaddr;

 dr = devres_alloc(dmam_release, sizeof(*dr), gfp);
 if (!dr)
  return ((void*)0);

 vaddr = dma_alloc_attrs(dev, size, dma_handle, gfp, attrs);
 if (!vaddr) {
  devres_free(dr);
  return ((void*)0);
 }

 dr->vaddr = vaddr;
 dr->dma_handle = *dma_handle;
 dr->size = size;
 dr->attrs = attrs;

 devres_add(dev, dr);

 return vaddr;
}
