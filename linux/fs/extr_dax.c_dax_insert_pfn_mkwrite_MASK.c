#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {int /*<<< orphan*/  address; TYPE_2__* vma; int /*<<< orphan*/  pgoff; } ;
struct address_space {int /*<<< orphan*/  host; int /*<<< orphan*/  i_pages; } ;
typedef  int /*<<< orphan*/  pfn_t ;
struct TYPE_4__ {TYPE_1__* vm_file; } ;
struct TYPE_3__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 unsigned int PMD_ORDER ; 
 int /*<<< orphan*/  VM_FAULT_FALLBACK ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct vm_fault*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct vm_fault*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vm_fault*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xas ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_fault_t
FUNC14(struct vm_fault *vmf, pfn_t pfn, unsigned int order)
{
	struct address_space *mapping = vmf->vma->vm_file->f_mapping;
	FUNC0(xas, &mapping->i_pages, vmf->pgoff, order);
	void *entry;
	vm_fault_t ret;

	FUNC11(&xas);
	entry = FUNC5(&xas, order);
	/* Did we race with someone splitting entry or so? */
	if (!entry || FUNC1(entry) ||
	    (order == 0 && !FUNC2(entry))) {
		FUNC6(&xas, entry);
		FUNC13(&xas);
		FUNC8(mapping->host, vmf,
						      VM_FAULT_NOPAGE);
		return VM_FAULT_NOPAGE;
	}
	FUNC12(&xas, PAGECACHE_TAG_DIRTY);
	FUNC3(&xas, entry);
	FUNC13(&xas);
	if (order == 0)
		ret = FUNC9(vmf->vma, vmf->address, pfn);
#ifdef CONFIG_FS_DAX_PMD
	else if (order == PMD_ORDER)
		ret = vmf_insert_pfn_pmd(vmf, pfn, FAULT_FLAG_WRITE);
#endif
	else
		ret = VM_FAULT_FALLBACK;
	FUNC4(&xas, entry);
	FUNC7(mapping->host, vmf, ret);
	return ret;
}