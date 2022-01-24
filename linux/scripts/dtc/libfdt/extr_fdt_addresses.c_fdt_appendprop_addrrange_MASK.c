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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  fdt64_t ;
typedef  int /*<<< orphan*/  fdt32_t ;

/* Variables and functions */
 int FDT_ERR_BADNCELLS ; 
 int FDT_ERR_BADVALUE ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (void*,int) ; 
 int FUNC3 (void*,int,char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (void*,int) ; 

int FUNC5(void *fdt, int parent, int nodeoffset,
			     const char *name, uint64_t addr, uint64_t size)
{
	int addr_cells, size_cells, ret;
	uint8_t data[sizeof(fdt64_t) * 2], *prop;

	ret = FUNC2(fdt, parent);
	if (ret < 0)
		return ret;
	addr_cells = ret;

	ret = FUNC4(fdt, parent);
	if (ret < 0)
		return ret;
	size_cells = ret;

	/* check validity of address */
	prop = data;
	if (addr_cells == 1) {
		if ((addr > UINT32_MAX) || ((UINT32_MAX + 1 - addr) < size))
			return -FDT_ERR_BADVALUE;

		FUNC0(prop, (uint32_t)addr);
	} else if (addr_cells == 2) {
		FUNC1(prop, addr);
	} else {
		return -FDT_ERR_BADNCELLS;
	}

	/* check validity of size */
	prop += addr_cells * sizeof(fdt32_t);
	if (size_cells == 1) {
		if (size > UINT32_MAX)
			return -FDT_ERR_BADVALUE;

		FUNC0(prop, (uint32_t)size);
	} else if (size_cells == 2) {
		FUNC1(prop, size);
	} else {
		return -FDT_ERR_BADNCELLS;
	}

	return FUNC3(fdt, nodeoffset, name, data,
			      (addr_cells + size_cells) * sizeof(fdt32_t));
}