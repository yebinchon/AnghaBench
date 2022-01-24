#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sectioncheck {int /*<<< orphan*/  bad_tosec; } ;
struct elf_info {int dummy; } ;
struct TYPE_5__ {scalar_t__ r_offset; } ;
typedef  int /*<<< orphan*/  Elf_Sym ;
typedef  TYPE_1__ Elf_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,long,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct elf_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct elf_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct elf_info*,struct sectioncheck const* const,TYPE_1__*,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  sec_mismatch_count ; 
 char* FUNC6 (struct elf_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const char* modname, struct elf_info *elf,
				     const struct sectioncheck* const mismatch,
				     Elf_Rela* r, Elf_Sym* sym,
				     const char *fromsec)
{
	const char* tosec = FUNC6(elf, FUNC1(elf, sym));

	sec_mismatch_count++;

	FUNC5(modname, elf, mismatch, r, sym, fromsec, tosec);

	if (FUNC4(tosec, mismatch->bad_tosec))
		FUNC0("The relocation at %s+0x%lx references\n"
		      "section \"%s\" which is black-listed.\n"
		      "Something is seriously wrong and should be fixed.\n"
		      "You might get more information about where this is\n"
		      "coming from by using scripts/check_extable.sh %s\n",
		      fromsec, (long)r->r_offset, tosec, modname);
	else if (!FUNC2(elf, FUNC1(elf, sym))) {
		if (FUNC3(r))
			FUNC0("The relocation at %s+0x%lx references\n"
			      "section \"%s\" which is not executable, IOW\n"
			      "it is not possible for the kernel to fault\n"
			      "at that address.  Something is seriously wrong\n"
			      "and should be fixed.\n",
			      fromsec, (long)r->r_offset, tosec);
		else
			FUNC0("The relocation at %s+0x%lx references\n"
			      "section \"%s\" which is not executable, IOW\n"
			      "the kernel will fault if it ever tries to\n"
			      "jump to it.  Something is seriously wrong\n"
			      "and should be fixed.\n",
			      fromsec, (long)r->r_offset, tosec);
	}
}