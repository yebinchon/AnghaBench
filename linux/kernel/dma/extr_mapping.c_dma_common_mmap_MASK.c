#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vm_area_struct {unsigned long vm_pgoff; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_start; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (size_t) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC2 (struct device*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*,struct vm_area_struct*,void*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int FUNC8 (struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 unsigned long FUNC10 (struct vm_area_struct*) ; 

int FUNC11(struct device *dev, struct vm_area_struct *vma,
		void *cpu_addr, dma_addr_t dma_addr, size_t size,
		unsigned long attrs)
{
#ifdef CONFIG_MMU
	unsigned long user_count = vma_pages(vma);
	unsigned long count = PAGE_ALIGN(size) >> PAGE_SHIFT;
	unsigned long off = vma->vm_pgoff;
	unsigned long pfn;
	int ret = -ENXIO;

	vma->vm_page_prot = dma_pgprot(dev, vma->vm_page_prot, attrs);

	if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
		return ret;

	if (off >= count || user_count > count - off)
		return -ENXIO;

	if (!dev_is_dma_coherent(dev)) {
		if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN))
			return -ENXIO;

		/* If the PFN is not valid, we do not have a struct page */
		pfn = arch_dma_coherent_to_pfn(dev, cpu_addr, dma_addr);
		if (!pfn_valid(pfn))
			return -ENXIO;
	} else {
		pfn = page_to_pfn(virt_to_page(cpu_addr));
	}

	return remap_pfn_range(vma, vma->vm_start, pfn + vma->vm_pgoff,
			user_count << PAGE_SHIFT, vma->vm_page_prot);
#else
	return -ENXIO;
#endif /* CONFIG_MMU */
}