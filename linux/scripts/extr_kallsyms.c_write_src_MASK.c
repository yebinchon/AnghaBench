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
struct TYPE_3__ {int addr; int len; int* sym; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 long long INT_MAX ; 
 long long INT_MIN ; 
 int KSYM_NAME_LEN ; 
 long long UINT_MAX ; 
 int _text ; 
 int /*<<< orphan*/  absolute_percpu ; 
 scalar_t__ base_relative ; 
 int /*<<< orphan*/ * best_table ; 
 int /*<<< orphan*/ * best_table_len ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*) ; 
 unsigned int* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int relative_base ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 TYPE_1__* table ; 
 unsigned int table_cnt ; 

__attribute__((used)) static void FUNC9(void)
{
	unsigned int i, k, off;
	unsigned int best_idx[256];
	unsigned int *markers;
	char buf[KSYM_NAME_LEN];

	FUNC6("#include <asm/bitsperlong.h>\n");
	FUNC6("#if BITS_PER_LONG == 64\n");
	FUNC6("#define PTR .quad\n");
	FUNC6("#define ALGN .balign 8\n");
	FUNC6("#else\n");
	FUNC6("#define PTR .long\n");
	FUNC6("#define ALGN .balign 4\n");
	FUNC6("#endif\n");

	FUNC6("\t.section .rodata, \"a\"\n");

	/* Provide proper symbols relocatability by their relativeness
	 * to a fixed anchor point in the runtime image, either '_text'
	 * for absolute address tables, in which case the linker will
	 * emit the final addresses at build time. Otherwise, use the
	 * offset relative to the lowest value encountered of all relative
	 * symbols, and emit non-relocatable fixed offsets that will be fixed
	 * up at runtime.
	 *
	 * The symbol names cannot be used to construct normal symbol
	 * references as the list of symbols contains symbols that are
	 * declared static and are private to their .o files.  This prevents
	 * .tmp_kallsyms.o or any other object from referencing them.
	 */
	if (!base_relative)
		FUNC5("kallsyms_addresses");
	else
		FUNC5("kallsyms_offsets");

	for (i = 0; i < table_cnt; i++) {
		if (base_relative) {
			long long offset;
			int overflow;

			if (!absolute_percpu) {
				offset = table[i].addr - relative_base;
				overflow = (offset < 0 || offset > UINT_MAX);
			} else if (FUNC8(&table[i])) {
				offset = table[i].addr;
				overflow = (offset < 0 || offset > INT_MAX);
			} else {
				offset = relative_base - table[i].addr - 1;
				overflow = (offset < INT_MIN || offset >= 0);
			}
			if (overflow) {
				FUNC2(stderr, "kallsyms failure: "
					"%s symbol value %#x out of range in relative mode\n",
					FUNC8(&table[i]) ? "absolute" : "relative",
					table[i].addr);
				FUNC0(EXIT_FAILURE);
			}
			FUNC6("\t.long\t%#x\n", (int)offset);
		} else if (!FUNC8(&table[i])) {
			if (_text <= table[i].addr)
				FUNC6("\tPTR\t_text + %#llx\n",
					table[i].addr - _text);
			else
				FUNC6("\tPTR\t_text - %#llx\n",
					_text - table[i].addr);
		} else {
			FUNC6("\tPTR\t%#llx\n", table[i].addr);
		}
	}
	FUNC6("\n");

	if (base_relative) {
		FUNC5("kallsyms_relative_base");
		FUNC6("\tPTR\t_text - %#llx\n", _text - relative_base);
		FUNC6("\n");
	}

	FUNC5("kallsyms_num_syms");
	FUNC6("\t.long\t%u\n", table_cnt);
	FUNC6("\n");

	/* table of offset markers, that give the offset in the compressed stream
	 * every 256 symbols */
	markers = FUNC4(sizeof(unsigned int) * ((table_cnt + 255) / 256));
	if (!markers) {
		FUNC2(stderr, "kallsyms failure: "
			"unable to allocate required memory\n");
		FUNC0(EXIT_FAILURE);
	}

	FUNC5("kallsyms_names");
	off = 0;
	for (i = 0; i < table_cnt; i++) {
		if ((i & 0xFF) == 0)
			markers[i >> 8] = off;

		FUNC6("\t.byte 0x%02x", table[i].len);
		for (k = 0; k < table[i].len; k++)
			FUNC6(", 0x%02x", table[i].sym[k]);
		FUNC6("\n");

		off += table[i].len + 1;
	}
	FUNC6("\n");

	FUNC5("kallsyms_markers");
	for (i = 0; i < ((table_cnt + 255) >> 8); i++)
		FUNC6("\t.long\t%u\n", markers[i]);
	FUNC6("\n");

	FUNC3(markers);

	FUNC5("kallsyms_token_table");
	off = 0;
	for (i = 0; i < 256; i++) {
		best_idx[i] = off;
		FUNC1(best_table[i], best_table_len[i], buf);
		FUNC6("\t.asciz\t\"%s\"\n", buf);
		off += FUNC7(buf) + 1;
	}
	FUNC6("\n");

	FUNC5("kallsyms_token_index");
	for (i = 0; i < 256; i++)
		FUNC6("\t.short\t%d\n", best_idx[i]);
	FUNC6("\n");
}