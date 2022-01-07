
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sectioncheck {int (* handler ) (char const*,struct elf_info*,struct sectioncheck const*,int *,int *,char const*) ;} ;
struct elf_info {int dummy; } ;
typedef int Elf_Sym ;
typedef int Elf_Rela ;


 int default_mismatch_handler (char const*,struct elf_info*,struct sectioncheck const*,int *,int *,char const*) ;
 int get_secindex (struct elf_info*,int *) ;
 char* sec_name (struct elf_info*,int ) ;
 struct sectioncheck* section_mismatch (char const*,char const*) ;
 int stub1 (char const*,struct elf_info*,struct sectioncheck const*,int *,int *,char const*) ;

__attribute__((used)) static void check_section_mismatch(const char *modname, struct elf_info *elf,
       Elf_Rela *r, Elf_Sym *sym, const char *fromsec)
{
 const char *tosec = sec_name(elf, get_secindex(elf, sym));
 const struct sectioncheck *mismatch = section_mismatch(fromsec, tosec);

 if (mismatch) {
  if (mismatch->handler)
   mismatch->handler(modname, elf, mismatch,
       r, sym, fromsec);
  else
   default_mismatch_handler(modname, elf, mismatch,
       r, sym, fromsec);
 }
}
