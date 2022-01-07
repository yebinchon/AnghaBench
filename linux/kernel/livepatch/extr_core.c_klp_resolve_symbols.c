
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* strtab; TYPE_2__* symtab; } ;
struct module {TYPE_1__ core_kallsyms; } ;
struct TYPE_9__ {int r_info; } ;
struct TYPE_8__ {int sh_size; scalar_t__ sh_addr; } ;
struct TYPE_7__ {scalar_t__ st_shndx; int st_name; unsigned long st_value; } ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Shdr ;
typedef TYPE_4__ Elf_Rela ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int ELF_R_SYM (int ) ;
 int KSYM_NAME_LEN ;
 int MODULE_NAME_LEN ;
 scalar_t__ SHN_LIVEPATCH ;
 int klp_find_object_symbol (char*,char*,unsigned long,unsigned long*) ;
 int pr_err (char*,char*) ;
 int sscanf (char*,char*,char*,char*,unsigned long*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int klp_resolve_symbols(Elf_Shdr *relasec, struct module *pmod)
{
 int i, cnt, vmlinux, ret;
 char objname[MODULE_NAME_LEN];
 char symname[KSYM_NAME_LEN];
 char *strtab = pmod->core_kallsyms.strtab;
 Elf_Rela *relas;
 Elf_Sym *sym;
 unsigned long sympos, addr;
 BUILD_BUG_ON(MODULE_NAME_LEN < 56 || KSYM_NAME_LEN != 128);

 relas = (Elf_Rela *) relasec->sh_addr;

 for (i = 0; i < relasec->sh_size / sizeof(Elf_Rela); i++) {
  sym = pmod->core_kallsyms.symtab + ELF_R_SYM(relas[i].r_info);
  if (sym->st_shndx != SHN_LIVEPATCH) {
   pr_err("symbol %s is not marked as a livepatch symbol\n",
          strtab + sym->st_name);
   return -EINVAL;
  }


  cnt = sscanf(strtab + sym->st_name,
        ".klp.sym.%55[^.].%127[^,],%lu",
        objname, symname, &sympos);
  if (cnt != 3) {
   pr_err("symbol %s has an incorrectly formatted name\n",
          strtab + sym->st_name);
   return -EINVAL;
  }


  vmlinux = !strcmp(objname, "vmlinux");
  ret = klp_find_object_symbol(vmlinux ? ((void*)0) : objname,
          symname, sympos, &addr);
  if (ret)
   return ret;

  sym->st_value = addr;
 }

 return 0;
}
