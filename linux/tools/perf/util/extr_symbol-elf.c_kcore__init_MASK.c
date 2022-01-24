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
struct kcore {int elfclass; int fd; int /*<<< orphan*/  elf; int /*<<< orphan*/  ehdr; } ;
typedef  int /*<<< orphan*/  GElf_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_WRITE ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct kcore *kcore, char *filename, int elfclass,
		       bool temp)
{
	kcore->elfclass = elfclass;

	if (temp)
		kcore->fd = FUNC5(filename);
	else
		kcore->fd = FUNC6(filename, O_WRONLY | O_CREAT | O_EXCL, 0400);
	if (kcore->fd == -1)
		return -1;

	kcore->elf = FUNC1(kcore->fd, ELF_C_WRITE, NULL);
	if (!kcore->elf)
		goto out_close;

	if (!FUNC3(kcore->elf, elfclass))
		goto out_end;

	FUNC4(&kcore->ehdr, 0, sizeof(GElf_Ehdr));

	return 0;

out_end:
	FUNC2(kcore->elf);
out_close:
	FUNC0(kcore->fd);
	FUNC7(filename);
	return -1;
}