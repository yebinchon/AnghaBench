#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  e_shstrndx; } ;
struct TYPE_7__ {int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(Elf *elf, int i, GElf_Ehdr *ehdr, char **shname,
		   GElf_Shdr *shdr, Elf_Data **data)
{
	Elf_Scn *scn;

	scn = FUNC1(elf, i);
	if (!scn)
		return 1;

	if (FUNC3(scn, shdr) != shdr)
		return 2;

	*shname = FUNC2(elf, ehdr->e_shstrndx, shdr->sh_name);
	if (!*shname || !shdr->sh_size)
		return 3;

	*data = FUNC0(scn, 0);
	if (!*data || FUNC0(scn, *data) != NULL)
		return 4;

	return 0;
}