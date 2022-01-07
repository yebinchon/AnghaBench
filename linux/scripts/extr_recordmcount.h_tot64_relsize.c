
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sh_size; } ;
typedef TYPE_1__ Elf_Shdr ;


 scalar_t__ _w (int ) ;
 char const* already_has_rel_mcount ;
 char* has_rel_mcount (TYPE_1__ const*,TYPE_1__ const* const,char const* const,char const* const) ;
 scalar_t__ is_mcounted_section_name (char const*) ;

__attribute__((used)) static unsigned tot_relsize(Elf_Shdr const *const shdr0,
       unsigned nhdr,
       const char *const shstrtab,
       const char *const fname)
{
 unsigned totrelsz = 0;
 Elf_Shdr const *shdrp = shdr0;
 char const *txtname;

 for (; nhdr; --nhdr, ++shdrp) {
  txtname = has_rel_mcount(shdrp, shdr0, shstrtab, fname);
  if (txtname == already_has_rel_mcount) {
   totrelsz = 0;
   break;
  }
  if (txtname && is_mcounted_section_name(txtname))
   totrelsz += _w(shdrp->sh_size);
 }
 return totrelsz;
}
