#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ d_buf; } ;
struct TYPE_6__ {scalar_t__* e_ident; } ;
typedef  int /*<<< orphan*/  GElf_Shdr ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_2__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 size_t EI_CLASS ; 
 scalar_t__ ELFCLASS32 ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PERF_ELF_C_READ_MMAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static char *FUNC8(const char *module)
{
	int fd;
	Elf *elf;
	GElf_Ehdr ehdr;
	GElf_Shdr shdr;
	Elf_Data *data;
	Elf_Scn *sec;
	char *mod_name = NULL;
	int name_offset;

	fd = FUNC6(module, O_RDONLY);
	if (fd < 0)
		return NULL;

	elf = FUNC1(fd, PERF_ELF_C_READ_MMAP, NULL);
	if (elf == NULL)
		goto elf_err;

	if (FUNC5(elf, &ehdr) == NULL)
		goto ret_err;

	sec = FUNC4(elf, &ehdr, &shdr,
			".gnu.linkonce.this_module", NULL);
	if (!sec)
		goto ret_err;

	data = FUNC3(sec, NULL);
	if (!data || !data->d_buf)
		goto ret_err;

	/*
	 * NOTE:
	 * '.gnu.linkonce.this_module' section of kernel module elf directly
	 * maps to 'struct module' from linux/module.h. This section contains
	 * actual module name which will be used by kernel after loading it.
	 * But, we cannot use 'struct module' here since linux/module.h is not
	 * exposed to user-space. Offset of 'name' has remained same from long
	 * time, so hardcoding it here.
	 */
	if (ehdr.e_ident[EI_CLASS] == ELFCLASS32)
		name_offset = 12;
	else	/* expect ELFCLASS64 by default */
		name_offset = 24;

	mod_name = FUNC7((char *)data->d_buf + name_offset);

ret_err:
	FUNC2(elf);
elf_err:
	FUNC0(fd);
	return mod_name;
}