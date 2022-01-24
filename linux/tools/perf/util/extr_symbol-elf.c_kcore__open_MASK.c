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
struct kcore {int fd; scalar_t__ elfclass; int /*<<< orphan*/  elf; int /*<<< orphan*/  ehdr; } ;
typedef  int /*<<< orphan*/  GElf_Ehdr ;

/* Variables and functions */
 scalar_t__ ELFCLASSNONE ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct kcore *kcore, const char *filename)
{
	GElf_Ehdr *ehdr;

	kcore->fd = FUNC5(filename, O_RDONLY);
	if (kcore->fd == -1)
		return -1;

	kcore->elf = FUNC1(kcore->fd, ELF_C_READ, NULL);
	if (!kcore->elf)
		goto out_close;

	kcore->elfclass = FUNC3(kcore->elf);
	if (kcore->elfclass == ELFCLASSNONE)
		goto out_end;

	ehdr = FUNC4(kcore->elf, &kcore->ehdr);
	if (!ehdr)
		goto out_end;

	return 0;

out_end:
	FUNC2(kcore->elf);
out_close:
	FUNC0(kcore->fd);
	return -1;
}