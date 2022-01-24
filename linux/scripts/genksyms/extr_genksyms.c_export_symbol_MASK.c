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
struct symbol {scalar_t__ status; struct symbol* expansion_trail; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ STATUS_DEFINED ; 
 scalar_t__ STATUS_UNCHANGED ; 
 int /*<<< orphan*/  SYM_NORMAL ; 
 int /*<<< orphan*/  debugfile ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  errors ; 
 int FUNC1 (struct symbol*,int) ; 
 struct symbol* expansion_trail ; 
 struct symbol* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_dump_defs ; 
 scalar_t__ flag_preserve ; 
 int /*<<< orphan*/  flag_rel_crcs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,unsigned long) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC8(const char *name)
{
	struct symbol *sym;

	sym = FUNC2(name, SYM_NORMAL, 0);
	if (!sym)
		FUNC0("export undefined symbol %s", name);
	else {
		unsigned long crc;
		int has_changed = 0;

		if (flag_dump_defs)
			FUNC3(debugfile, "Export %s == <", name);

		expansion_trail = (struct symbol *)-1L;

		sym->expansion_trail = expansion_trail;
		expansion_trail = sym;
		crc = FUNC1(sym, 0xffffffff) ^ 0xffffffff;

		sym = expansion_trail;
		while (sym != (struct symbol *)-1L) {
			struct symbol *n = sym->expansion_trail;

			if (sym->status != STATUS_UNCHANGED) {
				if (!has_changed) {
					FUNC5();
					FUNC3(stderr, "%s: %s: modversion "
						"changed because of changes "
						"in ", flag_preserve ? "error" :
						       "warning", name);
				} else
					FUNC3(stderr, ", ");
				FUNC6(sym->type, sym->name);
				if (sym->status == STATUS_DEFINED)
					FUNC3(stderr, " (became defined)");
				has_changed = 1;
				if (flag_preserve)
					errors++;
			}
			sym->expansion_trail = 0;
			sym = n;
		}
		if (has_changed)
			FUNC3(stderr, "\n");

		if (flag_dump_defs)
			FUNC4(">\n", debugfile);

		/* Used as a linker script. */
		FUNC7(!flag_rel_crcs ? "__crc_%s = 0x%08lx;\n" :
		       "SECTIONS { .rodata : ALIGN(4) { "
		       "__crc_%s = .; LONG(0x%08lx); } }\n",
		       name, crc);
	}
}