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
typedef  scalar_t__ Elf_Addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (void const*) ; 

__attribute__((used)) static int FUNC1(const void *a, const void *b)
{
	Elf_Addr av = FUNC0(a);
	Elf_Addr bv = FUNC0(b);

	if (av < bv)
		return -1;
	if (av > bv)
		return 1;
	return 0;
}