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
typedef  int /*<<< orphan*/  Elf32_Word ;

/* Variables and functions */
 unsigned int SHN_XINDEX ; 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline unsigned int FUNC3(unsigned int shndx,
					unsigned int sym_offs,
					const Elf32_Word *symtab_shndx_start)
{
	if (FUNC1(shndx))
		return FUNC0(shndx);
	if (shndx != SHN_XINDEX)
		return shndx;
	return FUNC2(&symtab_shndx_start[sym_offs]);
}