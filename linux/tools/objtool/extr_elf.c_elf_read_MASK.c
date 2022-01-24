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
struct elf {int fd; int /*<<< orphan*/  ehdr; int /*<<< orphan*/  elf; int /*<<< orphan*/  sections; } ;
typedef  int /*<<< orphan*/  Elf_Cmd ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_RDWR ; 
 int /*<<< orphan*/  ELF_C_READ_MMAP ; 
 int /*<<< orphan*/  ELF_C_WRITE ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct elf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct elf* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct elf*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (struct elf*) ; 
 scalar_t__ FUNC12 (struct elf*) ; 
 scalar_t__ FUNC13 (struct elf*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

struct elf *FUNC15(const char *name, int flags)
{
	struct elf *elf;
	Elf_Cmd cmd;

	FUNC4(EV_CURRENT);

	elf = FUNC7(sizeof(*elf));
	if (!elf) {
		FUNC10("malloc");
		return NULL;
	}
	FUNC8(elf, 0, sizeof(*elf));

	FUNC0(&elf->sections);

	elf->fd = FUNC9(name, flags);
	if (elf->fd == -1) {
		FUNC5(stderr, "objtool: Can't open '%s': %s\n",
			name, FUNC14(errno));
		goto err;
	}

	if ((flags & O_ACCMODE) == O_RDONLY)
		cmd = ELF_C_READ_MMAP;
	else if ((flags & O_ACCMODE) == O_RDWR)
		cmd = ELF_C_RDWR;
	else /* O_WRONLY */
		cmd = ELF_C_WRITE;

	elf->elf = FUNC2(elf->fd, cmd, NULL);
	if (!elf->elf) {
		FUNC1("elf_begin");
		goto err;
	}

	if (!FUNC6(elf->elf, &elf->ehdr)) {
		FUNC1("gelf_getehdr");
		goto err;
	}

	if (FUNC12(elf))
		goto err;

	if (FUNC13(elf))
		goto err;

	if (FUNC11(elf))
		goto err;

	return elf;

err:
	FUNC3(elf);
	return NULL;
}