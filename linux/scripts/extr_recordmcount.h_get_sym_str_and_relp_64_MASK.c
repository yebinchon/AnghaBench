#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  e_shoff; } ;
struct TYPE_5__ {int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_link; } ;
typedef  int /*<<< orphan*/  Elf_Sym ;
typedef  TYPE_1__ Elf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Rel ;
typedef  TYPE_2__ Elf_Ehdr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Elf_Shdr const *const relhdr,
				 Elf_Ehdr const *const ehdr,
				 Elf_Sym const **sym0,
				 char const **str0,
				 Elf_Rel const **relp)
{
	Elf_Shdr *const shdr0 = (Elf_Shdr *)(FUNC0(ehdr->e_shoff)
		+ (void *)ehdr);
	unsigned const symsec_sh_link = FUNC1(relhdr->sh_link);
	Elf_Shdr const *const symsec = &shdr0[symsec_sh_link];
	Elf_Shdr const *const strsec = &shdr0[FUNC1(symsec->sh_link)];
	Elf_Rel const *const rel0 = (Elf_Rel const *)(FUNC0(relhdr->sh_offset)
		+ (void *)ehdr);

	*sym0 = (Elf_Sym const *)(FUNC0(symsec->sh_offset)
				  + (void *)ehdr);

	*str0 = (char const *)(FUNC0(strsec->sh_offset)
			       + (void *)ehdr);

	*relp = rel0;
}