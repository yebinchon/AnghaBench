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
struct vmap_area {unsigned long va_start; unsigned long va_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long VMALLOC_END ; 
 unsigned long VMALLOC_START ; 
 unsigned int VMAP_MAX_ALLOC ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned long) ; 
 struct vmap_area* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vmap_area*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void const*,unsigned long) ; 

void FUNC8(const void *mem, unsigned int count)
{
	unsigned long size = (unsigned long)count << PAGE_SHIFT;
	unsigned long addr = (unsigned long)mem;
	struct vmap_area *va;

	FUNC6();
	FUNC0(!addr);
	FUNC0(addr < VMALLOC_START);
	FUNC0(addr > VMALLOC_END);
	FUNC0(!FUNC1(addr));

	if (FUNC5(count <= VMAP_MAX_ALLOC)) {
		FUNC2(mem, size);
		FUNC7(mem, size);
		return;
	}

	va = FUNC3(addr);
	FUNC0(!va);
	FUNC2((void *)va->va_start,
				    (va->va_end - va->va_start));
	FUNC4(va);
}