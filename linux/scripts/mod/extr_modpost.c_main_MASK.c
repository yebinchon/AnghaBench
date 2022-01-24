#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {int /*<<< orphan*/  export; TYPE_1__* module; int /*<<< orphan*/  name; scalar_t__ is_static; struct symbol* next; } ;
struct module {char* name; scalar_t__ skip; struct module* next; } ;
struct ext_sym_list {char* file; struct ext_sym_list* next; } ;
struct buffer {struct ext_sym_list* p; scalar_t__ pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  is_dot_o; } ;

/* Variables and functions */
 struct ext_sym_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int PATH_MAX ; 
 int SYMBOL_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,struct module*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,struct module*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,struct module*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*,struct module*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer*,char*) ; 
 int FUNC8 (struct buffer*,struct module*) ; 
 int all_versions ; 
 int FUNC9 (struct module*) ; 
 int FUNC10 (struct module*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int external_module ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext_sym_list*) ; 
 int FUNC15 (int,char**,char*) ; 
 int ignore_missing_files ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 struct module* modules ; 
 int modversions ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 scalar_t__ sec_mismatch_count ; 
 int sec_mismatch_fatal ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,char*) ; 
 struct symbol** symbolhash ; 
 int /*<<< orphan*/  vmlinux_section_warnings ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int warn_unresolved ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer*,char*) ; 
 int write_namespace_deps ; 
 int /*<<< orphan*/  FUNC25 () ; 

int FUNC26(int argc, char **argv)
{
	struct module *mod;
	struct buffer buf = { };
	char *kernel_read = NULL, *module_read = NULL;
	char *dump_write = NULL, *files_source = NULL;
	int opt;
	int err;
	int n;
	struct ext_sym_list *extsym_iter;
	struct ext_sym_list *extsym_start = NULL;

	while ((opt = FUNC15(argc, argv, "i:I:e:mnsT:o:awEd")) != -1) {
		switch (opt) {
		case 'i':
			kernel_read = optarg;
			break;
		case 'I':
			module_read = optarg;
			external_module = 1;
			break;
		case 'e':
			external_module = 1;
			extsym_iter =
			   FUNC0(FUNC17(sizeof(*extsym_iter)));
			extsym_iter->next = extsym_start;
			extsym_iter->file = optarg;
			extsym_start = extsym_iter;
			break;
		case 'm':
			modversions = 1;
			break;
		case 'n':
			ignore_missing_files = 1;
			break;
		case 'o':
			dump_write = optarg;
			break;
		case 'a':
			all_versions = 1;
			break;
		case 's':
			vmlinux_section_warnings = 0;
			break;
		case 'T':
			files_source = optarg;
			break;
		case 'w':
			warn_unresolved = 1;
			break;
		case 'E':
			sec_mismatch_fatal = 1;
			break;
		case 'd':
			write_namespace_deps = 1;
			break;
		default:
			FUNC11(1);
		}
	}

	if (kernel_read)
		FUNC18(kernel_read, 1);
	if (module_read)
		FUNC18(module_read, 0);
	while (extsym_start) {
		FUNC18(extsym_start->file, 0);
		extsym_iter = extsym_start->next;
		FUNC14(extsym_start);
		extsym_start = extsym_iter;
	}

	while (optind < argc)
		FUNC19(argv[optind++]);

	if (files_source)
		FUNC20(files_source);

	err = 0;

	for (mod = modules; mod; mod = mod->next) {
		char fname[PATH_MAX];

		if (mod->skip)
			continue;

		buf.pos = 0;

		err |= FUNC10(mod);
		err |= FUNC9(mod);
		if (write_namespace_deps)
			continue;

		FUNC2(&buf, mod);
		FUNC3(&buf, !external_module);
		FUNC5(&buf);
		FUNC7(&buf, mod->name);
		err |= FUNC8(&buf, mod);
		FUNC1(&buf, mod);
		FUNC4(&buf, mod);
		FUNC6(&buf, mod);

		FUNC21(fname, "%s.mod.c", mod->name);
		FUNC24(&buf, fname);
	}

	if (write_namespace_deps) {
		FUNC25();
		return 0;
	}

	if (dump_write)
		FUNC23(dump_write);
	if (sec_mismatch_count && sec_mismatch_fatal)
		FUNC13("modpost: Section mismatches detected.\n"
		      "Set CONFIG_SECTION_MISMATCH_WARN_ONLY=y to allow them.\n");
	for (n = 0; n < SYMBOL_HASH_SIZE; n++) {
		struct symbol *s;

		for (s = symbolhash[n]; s; s = s->next) {
			/*
			 * Do not check "vmlinux". This avoids the same warnings
			 * shown twice, and false-positives for ARCH=um.
			 */
			if (FUNC16(s->module->name) && !s->module->is_dot_o)
				continue;

			if (s->is_static)
				FUNC22("\"%s\" [%s] is a static %s\n",
				     s->name, s->module->name,
				     FUNC12(s->export));
		}
	}

	FUNC14(buf.p);

	return err;
}