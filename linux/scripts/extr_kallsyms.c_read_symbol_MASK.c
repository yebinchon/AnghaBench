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
struct sym_entry {char* sym; int /*<<< orphan*/  addr; scalar_t__ percpu_absolute; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EOF ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ KSYM_NAME_LEN ; 
 int /*<<< orphan*/  _text ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  percpu_range ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/ * text_ranges ; 
 unsigned char FUNC12 (char) ; 

__attribute__((used)) static int FUNC13(FILE *in, struct sym_entry *s)
{
	char sym[500], stype;
	int rc;

	rc = FUNC5(in, "%llx %c %499s\n", &s->addr, &stype, sym);
	if (rc != 3) {
		if (rc != EOF && FUNC3(sym, 500, in) == NULL)
			FUNC4(stderr, "Read error or end of file.\n");
		return -1;
	}
	if (FUNC10(sym) >= KSYM_NAME_LEN) {
		FUNC4(stderr, "Symbol %s too long for kallsyms (%zu >= %d).\n"
				"Please increase KSYM_NAME_LEN both in kernel and kallsyms.c\n",
			sym, FUNC10(sym), KSYM_NAME_LEN);
		return -1;
	}

	/* Ignore most absolute/undefined (?) symbols. */
	if (FUNC8(sym, "_text") == 0)
		_text = s->addr;
	else if (FUNC1(sym, s->addr, text_ranges,
				    FUNC0(text_ranges)) == 0)
		/* nothing to do */;
	else if (FUNC12(stype) == 'A')
	{
		/* Keep these useful absolute symbols */
		if (FUNC8(sym, "__kernel_syscall_via_break") &&
		    FUNC8(sym, "__kernel_syscall_via_epc") &&
		    FUNC8(sym, "__kernel_sigtramp") &&
		    FUNC8(sym, "__gp"))
			return -1;

	}
	else if (FUNC12(stype) == 'U' ||
		 FUNC6(sym))
		return -1;
	/* exclude also MIPS ELF local symbols ($L123 instead of .L123) */
	else if (sym[0] == '$')
		return -1;
	/* exclude debugging symbols */
	else if (stype == 'N' || stype == 'n')
		return -1;
	/* exclude s390 kasan local symbols */
	else if (!FUNC11(sym, ".LASANPC", 8))
		return -1;

	/* include the type field in the symbol name, so that it gets
	 * compressed together */
	s->len = FUNC10(sym) + 1;
	s->sym = FUNC7(s->len + 1);
	if (!s->sym) {
		FUNC4(stderr, "kallsyms failure: "
			"unable to allocate required amount of memory\n");
		FUNC2(EXIT_FAILURE);
	}
	FUNC9((char *)s->sym + 1, sym);
	s->sym[0] = stype;

	s->percpu_absolute = 0;

	/* Record if we've found __per_cpu_start/end. */
	FUNC1(sym, s->addr, &percpu_range, 1);

	return 0;
}