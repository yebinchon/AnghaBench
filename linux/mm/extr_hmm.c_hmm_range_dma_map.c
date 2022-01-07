
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hmm_range {unsigned long end; unsigned long start; int* pfns; int* flags; int valid; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 long EBUSY ;
 long EFAULT ;
 size_t HMM_PFN_WRITE ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int dma_map_page (struct device*,struct page*,int ,int ,int) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_page (struct device*,int ,int ,int) ;
 struct page* hmm_device_entry_to_page (struct hmm_range*,int) ;
 long hmm_range_fault (struct hmm_range*,unsigned int) ;

long hmm_range_dma_map(struct hmm_range *range, struct device *device,
  dma_addr_t *daddrs, unsigned int flags)
{
 unsigned long i, npages, mapped;
 long ret;

 ret = hmm_range_fault(range, flags);
 if (ret <= 0)
  return ret ? ret : -EBUSY;

 npages = (range->end - range->start) >> PAGE_SHIFT;
 for (i = 0, mapped = 0; i < npages; ++i) {
  enum dma_data_direction dir = DMA_TO_DEVICE;
  struct page *page;
  daddrs[i] = 0;

  page = hmm_device_entry_to_page(range, range->pfns[i]);
  if (page == ((void*)0))
   continue;


  if (!range->valid) {
   ret = -EBUSY;
   goto unmap;
  }


  if (range->pfns[i] & range->flags[HMM_PFN_WRITE])
   dir = DMA_BIDIRECTIONAL;

  daddrs[i] = dma_map_page(device, page, 0, PAGE_SIZE, dir);
  if (dma_mapping_error(device, daddrs[i])) {
   ret = -EFAULT;
   goto unmap;
  }

  mapped++;
 }

 return mapped;

unmap:
 for (npages = i, i = 0; (i < npages) && mapped; ++i) {
  enum dma_data_direction dir = DMA_TO_DEVICE;
  struct page *page;

  page = hmm_device_entry_to_page(range, range->pfns[i]);
  if (page == ((void*)0))
   continue;

  if (dma_mapping_error(device, daddrs[i]))
   continue;


  if (range->pfns[i] & range->flags[HMM_PFN_WRITE])
   dir = DMA_BIDIRECTIONAL;

  dma_unmap_page(device, daddrs[i], PAGE_SIZE, dir);
  mapped--;
 }

 return ret;
}
