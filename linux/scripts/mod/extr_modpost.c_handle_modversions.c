
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct module {int has_init; int has_cleanup; int unres; int name; scalar_t__ is_dot_o; } ;
struct elf_info {TYPE_2__* hdr; TYPE_1__* sechdrs; } ;
typedef enum export { ____Placeholder_export } export ;
struct TYPE_8__ {int st_value; int st_shndx; int st_info; } ;
struct TYPE_7__ {scalar_t__ e_type; int e_machine; } ;
struct TYPE_6__ {int sh_offset; int sh_addr; } ;
typedef TYPE_3__ Elf_Sym ;


 int ELF_ST_BIND (int ) ;
 int ELF_ST_TYPE (int ) ;
 int EM_SPARC ;
 int EM_SPARCV9 ;
 scalar_t__ ET_REL ;
 char* NOFAIL (int ) ;
 int SHN_ABS ;


 int STB_GLOBAL ;
 int STB_WEAK ;
 int STT_SPARC_REGISTER ;
 unsigned int TO_NATIVE (unsigned int) ;
 int alloc_symbol (char const*,int,int ) ;
 int export_from_sec (struct elf_info*,int ) ;
 int export_from_secname (struct elf_info*,int ) ;
 int get_secindex (struct elf_info*,TYPE_3__*) ;
 int ignore_undef_symbol (struct elf_info*,char const*) ;
 scalar_t__ is_vmlinux (int ) ;
 int strcmp (char const*,char*) ;
 int strdup (char const*) ;
 int strlen (char*) ;
 scalar_t__ strstarts (char const*,char*) ;
 int sym_add_exported (char const*,struct module*,int) ;
 int sym_update_crc (char const*,struct module*,unsigned int,int) ;
 char toupper (char) ;
 int warn (char*,char const*,int ,...) ;

__attribute__((used)) static void handle_modversions(struct module *mod, struct elf_info *info,
          Elf_Sym *sym, const char *symname)
{
 unsigned int crc;
 enum export export;
 bool is_crc = 0;
 const char *name;

 if ((!is_vmlinux(mod->name) || mod->is_dot_o) &&
     strstarts(symname, "__ksymtab"))
  export = export_from_secname(info, get_secindex(info, sym));
 else
  export = export_from_sec(info, get_secindex(info, sym));


 if (strstarts(symname, "__crc_")) {
  is_crc = 1;
  crc = (unsigned int) sym->st_value;
  if (sym->st_shndx != 128 && sym->st_shndx != SHN_ABS) {
   unsigned int *crcp;


   crcp = (void *)info->hdr + sym->st_value +
          info->sechdrs[sym->st_shndx].sh_offset -
          (info->hdr->e_type != ET_REL ?
    info->sechdrs[sym->st_shndx].sh_addr : 0);
   crc = TO_NATIVE(*crcp);
  }
  sym_update_crc(symname + strlen("__crc_"), mod, crc,
    export);
 }

 switch (sym->st_shndx) {
 case 129:
  if (strstarts(symname, "__gnu_lto_")) {

  } else
   warn("\"%s\" [%s] is COMMON symbol\n", symname, mod->name);
  break;
 case 128:

  if (ELF_ST_BIND(sym->st_info) != STB_GLOBAL &&
      ELF_ST_BIND(sym->st_info) != STB_WEAK)
   break;
  if (ignore_undef_symbol(info, symname))
   break;
  if (is_crc) {
   const char *e = is_vmlinux(mod->name) ?"":".ko";
   warn("EXPORT symbol \"%s\" [%s%s] version generation failed, symbol will not be versioned.\n",
        symname + strlen("__crc_"), mod->name, e);
  }
  mod->unres = alloc_symbol(symname,
       ELF_ST_BIND(sym->st_info) == STB_WEAK,
       mod->unres);
  break;
 default:

  if (strstarts(symname, "__ksymtab_")) {
   name = symname + strlen("__ksymtab_");
   sym_add_exported(name, mod, export);
  }
  if (strcmp(symname, "init_module") == 0)
   mod->has_init = 1;
  if (strcmp(symname, "cleanup_module") == 0)
   mod->has_cleanup = 1;
  break;
 }
}
