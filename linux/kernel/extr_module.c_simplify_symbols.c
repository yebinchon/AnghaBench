
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct module {int name; } ;
struct TYPE_4__ {size_t sym; int pcpu; } ;
struct load_info {char* strtab; TYPE_3__* sechdrs; TYPE_1__ index; } ;
struct kernel_symbol {int dummy; } ;
struct TYPE_6__ {unsigned long sh_addr; int sh_size; } ;
struct TYPE_5__ {int st_name; int st_shndx; unsigned long st_value; int st_info; } ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Shdr ;


 int ELF_ST_BIND (int ) ;
 int ENOENT ;
 int ENOEXEC ;
 int IS_ERR (struct kernel_symbol const*) ;
 int PTR_ERR (struct kernel_symbol const*) ;




 int STB_WEAK ;
 unsigned long kernel_symbol_value (struct kernel_symbol const*) ;
 scalar_t__ mod_percpu (struct module*) ;
 int pr_debug (char*,...) ;
 int pr_warn (char*,int ,...) ;
 struct kernel_symbol* resolve_symbol_wait (struct module*,struct load_info const*,char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int simplify_symbols(struct module *mod, const struct load_info *info)
{
 Elf_Shdr *symsec = &info->sechdrs[info->index.sym];
 Elf_Sym *sym = (void *)symsec->sh_addr;
 unsigned long secbase;
 unsigned int i;
 int ret = 0;
 const struct kernel_symbol *ksym;

 for (i = 1; i < symsec->sh_size / sizeof(Elf_Sym); i++) {
  const char *name = info->strtab + sym[i].st_name;

  switch (sym[i].st_shndx) {
  case 130:

   if (!strncmp(name, "__gnu_lto", 9))
    break;



   pr_debug("Common symbol: %s\n", name);
   pr_warn("%s: please compile with -fno-common\n",
          mod->name);
   ret = -ENOEXEC;
   break;

  case 131:

   pr_debug("Absolute symbol: 0x%08lx\n",
          (long)sym[i].st_value);
   break;

  case 129:

   break;

  case 128:
   ksym = resolve_symbol_wait(mod, info, name);

   if (ksym && !IS_ERR(ksym)) {
    sym[i].st_value = kernel_symbol_value(ksym);
    break;
   }


   if (!ksym && ELF_ST_BIND(sym[i].st_info) == STB_WEAK)
    break;

   ret = PTR_ERR(ksym) ?: -ENOENT;
   pr_warn("%s: Unknown symbol %s (err %d)\n",
    mod->name, name, ret);
   break;

  default:

   if (sym[i].st_shndx == info->index.pcpu)
    secbase = (unsigned long)mod_percpu(mod);
   else
    secbase = info->sechdrs[sym[i].st_shndx].sh_addr;
   sym[i].st_value += secbase;
   break;
  }
 }

 return ret;
}
