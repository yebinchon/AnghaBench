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
struct TYPE_3__ {size_t e_phnum; int e_phoff; int e_ehsize; int e_phentsize; scalar_t__ e_shstrndx; scalar_t__ e_shnum; scalar_t__ e_shentsize; int /*<<< orphan*/  e_flags; scalar_t__ e_shoff; scalar_t__ e_entry; int /*<<< orphan*/  e_version; int /*<<< orphan*/  e_machine; int /*<<< orphan*/  e_type; int /*<<< orphan*/  e_ident; } ;
struct kcore {scalar_t__ elfclass; int /*<<< orphan*/  elf; TYPE_1__ ehdr; } ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf64_Phdr ;
typedef  int /*<<< orphan*/  Elf64_Ehdr ;
typedef  int /*<<< orphan*/  Elf32_Phdr ;
typedef  int /*<<< orphan*/  Elf32_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  EI_NIDENT ; 
 scalar_t__ ELFCLASS32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kcore *from, struct kcore *to, size_t count)
{
	GElf_Ehdr *ehdr = &to->ehdr;
	GElf_Ehdr *kehdr = &from->ehdr;

	FUNC2(ehdr->e_ident, kehdr->e_ident, EI_NIDENT);
	ehdr->e_type      = kehdr->e_type;
	ehdr->e_machine   = kehdr->e_machine;
	ehdr->e_version   = kehdr->e_version;
	ehdr->e_entry     = 0;
	ehdr->e_shoff     = 0;
	ehdr->e_flags     = kehdr->e_flags;
	ehdr->e_phnum     = count;
	ehdr->e_shentsize = 0;
	ehdr->e_shnum     = 0;
	ehdr->e_shstrndx  = 0;

	if (from->elfclass == ELFCLASS32) {
		ehdr->e_phoff     = sizeof(Elf32_Ehdr);
		ehdr->e_ehsize    = sizeof(Elf32_Ehdr);
		ehdr->e_phentsize = sizeof(Elf32_Phdr);
	} else {
		ehdr->e_phoff     = sizeof(Elf64_Ehdr);
		ehdr->e_ehsize    = sizeof(Elf64_Ehdr);
		ehdr->e_phentsize = sizeof(Elf64_Phdr);
	}

	if (!FUNC1(to->elf, ehdr))
		return -1;

	if (!FUNC0(to->elf, count))
		return -1;

	return 0;
}