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
typedef  int /*<<< orphan*/  uint64_t ;
struct fdt_reserve_entry {int /*<<< orphan*/  size; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int FDT_ERR_BADOFFSET ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fdt_reserve_entry* FUNC2 (void const*,int) ; 

int FUNC3(const void *fdt, int n, uint64_t *address, uint64_t *size)
{
	const struct fdt_reserve_entry *re;

	FUNC0(fdt);
	re = FUNC2(fdt, n);
	if (!re)
		return -FDT_ERR_BADOFFSET;

	*address = FUNC1(&re->address);
	*size = FUNC1(&re->size);
	return 0;
}