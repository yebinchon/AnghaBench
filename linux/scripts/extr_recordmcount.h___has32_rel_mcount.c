
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sh_flags; int sh_type; int sh_name; int sh_info; } ;
typedef TYPE_1__ Elf_Shdr ;


 int SHF_EXECINSTR ;
 size_t SHT_PROGBITS ;
 int _w (int ) ;
 char const* already_has_rel_mcount ;
 int fprintf (int ,char*,char const* const) ;
 int stderr ;
 scalar_t__ strcmp (char*,char const* const) ;
 size_t w (int ) ;

__attribute__((used)) static char const * __has_rel_mcount(Elf_Shdr const *const relhdr,
         Elf_Shdr const *const shdr0,
         char const *const shstrtab,
         char const *const fname)
{

 Elf_Shdr const *const txthdr = &shdr0[w(relhdr->sh_info)];
 char const *const txtname = &shstrtab[w(txthdr->sh_name)];

 if (strcmp("__mcount_loc", txtname) == 0) {
  fprintf(stderr, "warning: __mcount_loc already exists: %s\n",
   fname);
  return already_has_rel_mcount;
 }
 if (w(txthdr->sh_type) != SHT_PROGBITS ||
     !(_w(txthdr->sh_flags) & SHF_EXECINSTR))
  return ((void*)0);
 return txtname;
}
