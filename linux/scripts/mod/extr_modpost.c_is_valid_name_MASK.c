#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct elf_info {char* strtab; } ;
struct TYPE_3__ {int st_name; } ;
typedef  TYPE_1__ Elf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static inline int FUNC2(struct elf_info *elf, Elf_Sym *sym)
{
	const char *name = elf->strtab + sym->st_name;

	if (!name || !FUNC1(name))
		return 0;
	return !FUNC0(name);
}