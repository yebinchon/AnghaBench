
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_devres {scalar_t__ vaddr; scalar_t__ size; scalar_t__ dma_handle; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;

__attribute__((used)) static int dmam_match(struct device *dev, void *res, void *match_data)
{
 struct dma_devres *this = res, *match = match_data;

 if (this->vaddr == match->vaddr) {
  WARN_ON(this->size != match->size ||
   this->dma_handle != match->dma_handle);
  return 1;
 }
 return 0;
}
