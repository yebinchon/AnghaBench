
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct symbol {scalar_t__ is_static; } ;
struct module {int skip; int gpl_compatible; int unres; int srcversion; int imported_namespaces; } ;
struct elf_info {scalar_t__ hdr; int modinfo; scalar_t__ strtab; TYPE_1__* symtab_stop; TYPE_1__* symtab_start; } ;
struct TYPE_5__ {scalar_t__ st_name; int st_info; } ;
typedef TYPE_1__ Elf_Sym ;


 unsigned char ELF_ST_BIND (int ) ;
 unsigned char STB_GLOBAL ;
 unsigned char STB_WEAK ;
 int add_namespace (int *,char*) ;
 scalar_t__ all_versions ;
 int alloc_symbol (char*,int ,int ) ;
 int check_sec_ref (struct module*,char const*,struct elf_info*) ;
 struct symbol* find_symbol (char*) ;
 char* get_modinfo (struct elf_info*,char*) ;
 char* get_next_modinfo (struct elf_info*,char*,char*) ;
 int get_src_version (char const*,int ,int) ;
 int handle_moddevtable (struct module*,struct elf_info*,TYPE_1__*,char const*) ;
 int handle_modversions (struct module*,struct elf_info*,TYPE_1__*,char const*) ;
 int have_vmlinux ;
 scalar_t__ is_vmlinux (char const*) ;
 scalar_t__ license_is_gpl_compatible (char*) ;
 int maybe_frob_rcs_version (char const*,char*,int ,int) ;
 scalar_t__ modversions ;
 int namespace_from_kstrtabns (struct elf_info*,TYPE_1__*) ;
 struct module* new_module (char const*) ;
 int parse_elf (struct elf_info*,char const*) ;
 int parse_elf_finish (struct elf_info*) ;
 char* remove_dot (scalar_t__) ;
 int strlen (char*) ;
 scalar_t__ strstarts (char const*,char*) ;
 int sym_update_namespace (char const*,int ) ;
 scalar_t__ vmlinux_section_warnings ;
 int warn (char*,char const*) ;

__attribute__((used)) static void read_symbols(const char *modname)
{
 const char *symname;
 char *version;
 char *license;
 char *namespace;
 struct module *mod;
 struct elf_info info = { };
 Elf_Sym *sym;

 if (!parse_elf(&info, modname))
  return;

 mod = new_module(modname);



 if (is_vmlinux(modname)) {
  have_vmlinux = 1;
  mod->skip = 1;
 }

 license = get_modinfo(&info, "license");
 if (!license && !is_vmlinux(modname))
  warn("modpost: missing MODULE_LICENSE() in %s\n"
       "see include/linux/module.h for "
       "more information\n", modname);
 while (license) {
  if (license_is_gpl_compatible(license))
   mod->gpl_compatible = 1;
  else {
   mod->gpl_compatible = 0;
   break;
  }
  license = get_next_modinfo(&info, "license", license);
 }

 namespace = get_modinfo(&info, "import_ns");
 while (namespace) {
  add_namespace(&mod->imported_namespaces, namespace);
  namespace = get_next_modinfo(&info, "import_ns", namespace);
 }

 for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
  symname = remove_dot(info.strtab + sym->st_name);

  handle_modversions(mod, &info, sym, symname);
  handle_moddevtable(mod, &info, sym, symname);
 }


 for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
  symname = remove_dot(info.strtab + sym->st_name);

  if (strstarts(symname, "__kstrtabns_"))
   sym_update_namespace(symname + strlen("__kstrtabns_"),
          namespace_from_kstrtabns(&info,
              sym));
 }


 for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
  unsigned char bind = ELF_ST_BIND(sym->st_info);

  if (bind == STB_GLOBAL || bind == STB_WEAK) {
   struct symbol *s =
    find_symbol(remove_dot(info.strtab +
             sym->st_name));

   if (s)
    s->is_static = 0;
  }
 }

 if (!is_vmlinux(modname) || vmlinux_section_warnings)
  check_sec_ref(mod, modname, &info);

 version = get_modinfo(&info, "version");
 if (version)
  maybe_frob_rcs_version(modname, version, info.modinfo,
           version - (char *)info.hdr);
 if (version || (all_versions && !is_vmlinux(modname)))
  get_src_version(modname, mod->srcversion,
    sizeof(mod->srcversion)-1);

 parse_elf_finish(&info);





 if (modversions)
  mod->unres = alloc_symbol("module_layout", 0, mod->unres);
}
