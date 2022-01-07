
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sectioncheck {int dummy; } ;
struct elf_info {int dummy; } ;
struct TYPE_3__ {int r_offset; int r_addend; } ;
typedef int Elf_Sym ;
typedef TYPE_1__ Elf_Rela ;


 int * find_elf_symbol (struct elf_info*,int ,int *) ;
 int * find_elf_symbol2 (struct elf_info*,int ,char const*) ;
 int get_secindex (struct elf_info*,int *) ;
 int is_function (int *) ;
 int report_sec_mismatch (char const*,struct sectioncheck const* const,char const*,int ,char const*,int ,char const*,char const*,int ) ;
 char* sec_name (struct elf_info*,int ) ;
 scalar_t__ secref_whitelist (struct sectioncheck const* const,char const*,char const*,char const*,char const*) ;
 scalar_t__ strstarts (char const*,char*) ;
 char* sym_name (struct elf_info*,int *) ;

__attribute__((used)) static void default_mismatch_handler(const char *modname, struct elf_info *elf,
         const struct sectioncheck* const mismatch,
         Elf_Rela *r, Elf_Sym *sym, const char *fromsec)
{
 const char *tosec;
 Elf_Sym *to;
 Elf_Sym *from;
 const char *tosym;
 const char *fromsym;

 from = find_elf_symbol2(elf, r->r_offset, fromsec);
 fromsym = sym_name(elf, from);

 if (strstarts(fromsym, "reference___initcall"))
  return;

 tosec = sec_name(elf, get_secindex(elf, sym));
 to = find_elf_symbol(elf, r->r_addend, sym);
 tosym = sym_name(elf, to);


 if (secref_whitelist(mismatch,
        fromsec, fromsym, tosec, tosym)) {
  report_sec_mismatch(modname, mismatch,
        fromsec, r->r_offset, fromsym,
        is_function(from), tosec, tosym,
        is_function(to));
 }
}
