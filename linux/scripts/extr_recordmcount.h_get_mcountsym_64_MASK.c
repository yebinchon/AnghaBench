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
struct TYPE_3__ {int /*<<< orphan*/  st_name; } ;
typedef  TYPE_1__ Elf_Sym ;
typedef  int /*<<< orphan*/  Elf_Rel ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 char const* altmcount ; 
 char gpfx ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC3(Elf_Sym const *const sym0,
			      Elf_Rel const *relp,
			      char const *const str0)
{
	unsigned mcountsym = 0;

	Elf_Sym const *const symp =
		&sym0[FUNC0(relp)];
	char const *symname = &str0[FUNC2(symp->st_name)];
	char const *mcount = gpfx == '_' ? "_mcount" : "mcount";
	char const *fentry = "__fentry__";

	if (symname[0] == '.')
		++symname;  /* ppc64 hack */
	if (FUNC1(mcount, symname) == 0 ||
	    (altmcount && FUNC1(altmcount, symname) == 0) ||
	    (FUNC1(fentry, symname) == 0))
		mcountsym = FUNC0(relp);

	return mcountsym;
}