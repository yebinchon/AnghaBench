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
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_SYSTEM_RAM ; 
 int /*<<< orphan*/  IORES_DESC_NONE ; 
 unsigned long MEMREMAP_WB ; 
 unsigned long MEMREMAP_WC ; 
 unsigned long MEMREMAP_WT ; 
 int REGION_INTERSECTS ; 
 int REGION_MIXED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,size_t,unsigned long) ; 

void *FUNC6(resource_size_t offset, size_t size, unsigned long flags)
{
	int is_ram = FUNC4(offset, size,
				       IORESOURCE_SYSTEM_RAM, IORES_DESC_NONE);
	void *addr = NULL;

	if (!flags)
		return NULL;

	if (is_ram == REGION_MIXED) {
		FUNC0(1, "memremap attempted on mixed range %pa size: %#lx\n",
				&offset, (unsigned long) size);
		return NULL;
	}

	/* Try all mapping types requested until one returns non-NULL */
	if (flags & MEMREMAP_WB) {
		/*
		 * MEMREMAP_WB is special in that it can be satisfied
		 * from the direct map.  Some archs depend on the
		 * capability of memremap() to autodetect cases where
		 * the requested range is potentially in System RAM.
		 */
		if (is_ram == REGION_INTERSECTS)
			addr = FUNC5(offset, size, flags);
		if (!addr)
			addr = FUNC1(offset, size);
	}

	/*
	 * If we don't have a mapping yet and other request flags are
	 * present then we will be attempting to establish a new virtual
	 * address mapping.  Enforce that this mapping is not aliasing
	 * System RAM.
	 */
	if (!addr && is_ram == REGION_INTERSECTS && flags != MEMREMAP_WB) {
		FUNC0(1, "memremap attempted on ram %pa size: %#lx\n",
				&offset, (unsigned long) size);
		return NULL;
	}

	if (!addr && (flags & MEMREMAP_WT))
		addr = FUNC3(offset, size);

	if (!addr && (flags & MEMREMAP_WC))
		addr = FUNC2(offset, size);

	return addr;
}