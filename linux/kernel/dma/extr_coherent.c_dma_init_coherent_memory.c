
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {int size; int spinlock; int pfn_base; int device_base; void* virt_base; void* bitmap; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int BITS_TO_LONGS (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEMREMAP_WC ;
 size_t PAGE_SHIFT ;
 int PFN_DOWN (int ) ;
 int kfree (struct dma_coherent_mem*) ;
 void* kzalloc (int,int ) ;
 void* memremap (int ,size_t,int ) ;
 int memunmap (void*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dma_init_coherent_memory(phys_addr_t phys_addr,
  dma_addr_t device_addr, size_t size,
  struct dma_coherent_mem **mem)
{
 struct dma_coherent_mem *dma_mem = ((void*)0);
 void *mem_base = ((void*)0);
 int pages = size >> PAGE_SHIFT;
 int bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
 int ret;

 if (!size) {
  ret = -EINVAL;
  goto out;
 }

 mem_base = memremap(phys_addr, size, MEMREMAP_WC);
 if (!mem_base) {
  ret = -EINVAL;
  goto out;
 }
 dma_mem = kzalloc(sizeof(struct dma_coherent_mem), GFP_KERNEL);
 if (!dma_mem) {
  ret = -ENOMEM;
  goto out;
 }
 dma_mem->bitmap = kzalloc(bitmap_size, GFP_KERNEL);
 if (!dma_mem->bitmap) {
  ret = -ENOMEM;
  goto out;
 }

 dma_mem->virt_base = mem_base;
 dma_mem->device_base = device_addr;
 dma_mem->pfn_base = PFN_DOWN(phys_addr);
 dma_mem->size = pages;
 spin_lock_init(&dma_mem->spinlock);

 *mem = dma_mem;
 return 0;

out:
 kfree(dma_mem);
 if (mem_base)
  memunmap(mem_base);
 return ret;
}
