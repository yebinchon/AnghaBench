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
struct TYPE_3__ {scalar_t__ e_type; } ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 scalar_t__ ET_EXEC ; 
 int /*<<< orphan*/  PERF_ELF_C_READ_MMAP ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(int fd, const char *name)
{
	Elf *elf;
	GElf_Ehdr ehdr;
	int retval = 0;

	elf = FUNC0(fd, PERF_ELF_C_READ_MMAP, NULL);
	if (elf == NULL)
		return 0;
	if (FUNC2(elf, &ehdr) == NULL)
		goto out;

	retval = (ehdr.e_type == ET_EXEC);

out:
	FUNC1(elf);
	FUNC3("unwind: elf_is_exec(%s): %d\n", name, retval);
	return retval;
}