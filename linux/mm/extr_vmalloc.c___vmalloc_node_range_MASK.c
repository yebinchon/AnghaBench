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
struct vm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long VM_ALLOC ; 
 unsigned long VM_UNINITIALIZED ; 
 struct vm_struct* FUNC1 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int,int /*<<< orphan*/ ,void const*) ; 
 void* FUNC2 (struct vm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,unsigned long) ; 

void *FUNC7(unsigned long size, unsigned long align,
			unsigned long start, unsigned long end, gfp_t gfp_mask,
			pgprot_t prot, unsigned long vm_flags, int node,
			const void *caller)
{
	struct vm_struct *area;
	void *addr;
	unsigned long real_size = size;

	size = FUNC0(size);
	if (!size || (size >> PAGE_SHIFT) > FUNC5())
		goto fail;

	area = FUNC1(size, align, VM_ALLOC | VM_UNINITIALIZED |
				vm_flags, start, end, node, gfp_mask, caller);
	if (!area)
		goto fail;

	addr = FUNC2(area, gfp_mask, prot, node);
	if (!addr)
		return NULL;

	/*
	 * In this function, newly allocated vm_struct has VM_UNINITIALIZED
	 * flag. It means that vm_struct is not fully initialized.
	 * Now, it is fully initialized, so remove this flag here.
	 */
	FUNC3(area);

	FUNC4(area, size, gfp_mask);

	return addr;

fail:
	FUNC6(gfp_mask, NULL,
			  "vmalloc: allocation failure: %lu bytes", real_size);
	return NULL;
}