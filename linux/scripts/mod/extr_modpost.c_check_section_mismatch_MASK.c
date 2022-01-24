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
struct sectioncheck {int /*<<< orphan*/  (* handler ) (char const*,struct elf_info*,struct sectioncheck const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ;} ;
struct elf_info {int dummy; } ;
typedef  int /*<<< orphan*/  Elf_Sym ;
typedef  int /*<<< orphan*/  Elf_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct elf_info*,struct sectioncheck const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct elf_info*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct elf_info*,int /*<<< orphan*/ ) ; 
 struct sectioncheck* FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct elf_info*,struct sectioncheck const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC5(const char *modname, struct elf_info *elf,
				   Elf_Rela *r, Elf_Sym *sym, const char *fromsec)
{
	const char *tosec = FUNC2(elf, FUNC1(elf, sym));
	const struct sectioncheck *mismatch = FUNC3(fromsec, tosec);

	if (mismatch) {
		if (mismatch->handler)
			mismatch->handler(modname, elf,  mismatch,
					  r, sym, fromsec);
		else
			FUNC0(modname, elf, mismatch,
						 r, sym, fromsec);
	}
}