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
struct fdt_reserve_entry {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int FDT_ERR_TRUNCATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct fdt_reserve_entry* FUNC1 (void const*,int) ; 

int FUNC2(const void *fdt)
{
	int i;
	const struct fdt_reserve_entry *re;

	for (i = 0; (re = FUNC1(fdt, i)) != NULL; i++) {
		if (FUNC0(&re->size) == 0)
			return i;
	}
	return -FDT_ERR_TRUNCATED;
}