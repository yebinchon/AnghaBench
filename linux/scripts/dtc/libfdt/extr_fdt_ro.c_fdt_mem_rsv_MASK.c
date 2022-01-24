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
struct fdt_reserve_entry {int dummy; } ;

/* Variables and functions */
 struct fdt_reserve_entry const* FUNC0 (void const*,int) ; 
 int FUNC1 (void const*) ; 
 int FUNC2 (void const*) ; 

__attribute__((used)) static const struct fdt_reserve_entry *FUNC3(const void *fdt, int n)
{
	int offset = n * sizeof(struct fdt_reserve_entry);
	int absoffset = FUNC1(fdt) + offset;

	if (absoffset < FUNC1(fdt))
		return NULL;
	if (absoffset > FUNC2(fdt) - sizeof(struct fdt_reserve_entry))
		return NULL;
	return FUNC0(fdt, n);
}