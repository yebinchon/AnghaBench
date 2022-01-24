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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  sh_offset; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_ELF_C_READ_MMAP ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC4(int fd, const char *name)
{
	Elf *elf;
	GElf_Ehdr ehdr;
	GElf_Shdr shdr;
	u64 offset = 0;

	elf = FUNC0(fd, PERF_ELF_C_READ_MMAP, NULL);
	if (elf == NULL)
		return 0;

	do {
		if (FUNC3(elf, &ehdr) == NULL)
			break;

		if (!FUNC2(elf, &ehdr, &shdr, name, NULL))
			break;

		offset = shdr.sh_offset;
	} while (0);

	FUNC1(elf);
	return offset;
}