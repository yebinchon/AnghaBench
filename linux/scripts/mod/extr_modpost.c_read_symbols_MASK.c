#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct symbol {scalar_t__ is_static; } ;
struct module {int skip; int gpl_compatible; int /*<<< orphan*/  unres; int /*<<< orphan*/  srcversion; int /*<<< orphan*/  imported_namespaces; } ;
struct elf_info {scalar_t__ hdr; int /*<<< orphan*/  modinfo; scalar_t__ strtab; TYPE_1__* symtab_stop; TYPE_1__* symtab_start; } ;
struct TYPE_5__ {scalar_t__ st_name; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ Elf_Sym ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char STB_GLOBAL ; 
 unsigned char STB_WEAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ all_versions ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct module*,char const*,struct elf_info*) ; 
 struct symbol* FUNC4 (char*) ; 
 char* FUNC5 (struct elf_info*,char*) ; 
 char* FUNC6 (struct elf_info*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct module*,struct elf_info*,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct module*,struct elf_info*,TYPE_1__*,char const*) ; 
 int have_vmlinux ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ modversions ; 
 int /*<<< orphan*/  FUNC13 (struct elf_info*,TYPE_1__*) ; 
 struct module* FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct elf_info*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct elf_info*) ; 
 char* FUNC17 (scalar_t__) ; 
 int FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ vmlinux_section_warnings ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*) ; 

__attribute__((used)) static void FUNC22(const char *modname)
{
	const char *symname;
	char *version;
	char *license;
	char *namespace;
	struct module *mod;
	struct elf_info info = { };
	Elf_Sym *sym;

	if (!FUNC15(&info, modname))
		return;

	mod = FUNC14(modname);

	/* When there's no vmlinux, don't print warnings about
	 * unresolved symbols (since there'll be too many ;) */
	if (FUNC10(modname)) {
		have_vmlinux = 1;
		mod->skip = 1;
	}

	license = FUNC5(&info, "license");
	if (!license && !FUNC10(modname))
		FUNC21("modpost: missing MODULE_LICENSE() in %s\n"
		     "see include/linux/module.h for "
		     "more information\n", modname);
	while (license) {
		if (FUNC11(license))
			mod->gpl_compatible = 1;
		else {
			mod->gpl_compatible = 0;
			break;
		}
		license = FUNC6(&info, "license", license);
	}

	namespace = FUNC5(&info, "import_ns");
	while (namespace) {
		FUNC1(&mod->imported_namespaces, namespace);
		namespace = FUNC6(&info, "import_ns", namespace);
	}

	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
		symname = FUNC17(info.strtab + sym->st_name);

		FUNC9(mod, &info, sym, symname);
		FUNC8(mod, &info, sym, symname);
	}

	/* Apply symbol namespaces from __kstrtabns_<symbol> entries. */
	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
		symname = FUNC17(info.strtab + sym->st_name);

		if (FUNC19(symname, "__kstrtabns_"))
			FUNC20(symname + FUNC18("__kstrtabns_"),
					     FUNC13(&info,
								      sym));
	}

	// check for static EXPORT_SYMBOL_* functions && global vars
	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
		unsigned char bind = FUNC0(sym->st_info);

		if (bind == STB_GLOBAL || bind == STB_WEAK) {
			struct symbol *s =
				FUNC4(FUNC17(info.strtab +
						       sym->st_name));

			if (s)
				s->is_static = 0;
		}
	}

	if (!FUNC10(modname) || vmlinux_section_warnings)
		FUNC3(mod, modname, &info);

	version = FUNC5(&info, "version");
	if (version)
		FUNC12(modname, version, info.modinfo,
				       version - (char *)info.hdr);
	if (version || (all_versions && !FUNC10(modname)))
		FUNC7(modname, mod->srcversion,
				sizeof(mod->srcversion)-1);

	FUNC16(&info);

	/* Our trick to get versioning for module struct etc. - it's
	 * never passed as an argument to an exported function, so
	 * the automatic versioning doesn't pick it up, but it's really
	 * important anyhow */
	if (modversions)
		mod->unres = FUNC2("module_layout", 0, mod->unres);
}