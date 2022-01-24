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
struct sectioncheck {int dummy; } ;
struct elf_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  r_offset; int /*<<< orphan*/  r_addend; } ;
typedef  int /*<<< orphan*/  Elf_Sym ;
typedef  TYPE_1__ Elf_Rela ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct elf_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct elf_info*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct elf_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct sectioncheck const* const,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct elf_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sectioncheck const* const,char const*,char const*,char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 char* FUNC8 (struct elf_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(const char *modname, struct elf_info *elf,
				     const struct sectioncheck* const mismatch,
				     Elf_Rela *r, Elf_Sym *sym, const char *fromsec)
{
	const char *tosec;
	Elf_Sym *to;
	Elf_Sym *from;
	const char *tosym;
	const char *fromsym;

	from = FUNC1(elf, r->r_offset, fromsec);
	fromsym = FUNC8(elf, from);

	if (FUNC7(fromsym, "reference___initcall"))
		return;

	tosec = FUNC5(elf, FUNC2(elf, sym));
	to = FUNC0(elf, r->r_addend, sym);
	tosym = FUNC8(elf, to);

	/* check whitelist - we may ignore it */
	if (FUNC6(mismatch,
			     fromsec, fromsym, tosec, tosym)) {
		FUNC4(modname, mismatch,
				    fromsec, r->r_offset, fromsym,
				    FUNC3(from), tosec, tosym,
				    FUNC3(to));
	}
}