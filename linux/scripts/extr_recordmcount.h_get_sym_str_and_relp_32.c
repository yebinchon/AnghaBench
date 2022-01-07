
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int e_shoff; } ;
struct TYPE_5__ {int sh_offset; int sh_link; } ;
typedef int Elf_Sym ;
typedef TYPE_1__ Elf_Shdr ;
typedef int Elf_Rel ;
typedef TYPE_2__ Elf_Ehdr ;


 int _w (int ) ;
 size_t w (int ) ;

__attribute__((used)) static void get_sym_str_and_relp(Elf_Shdr const *const relhdr,
     Elf_Ehdr const *const ehdr,
     Elf_Sym const **sym0,
     char const **str0,
     Elf_Rel const **relp)
{
 Elf_Shdr *const shdr0 = (Elf_Shdr *)(_w(ehdr->e_shoff)
  + (void *)ehdr);
 unsigned const symsec_sh_link = w(relhdr->sh_link);
 Elf_Shdr const *const symsec = &shdr0[symsec_sh_link];
 Elf_Shdr const *const strsec = &shdr0[w(symsec->sh_link)];
 Elf_Rel const *const rel0 = (Elf_Rel const *)(_w(relhdr->sh_offset)
  + (void *)ehdr);

 *sym0 = (Elf_Sym const *)(_w(symsec->sh_offset)
      + (void *)ehdr);

 *str0 = (char const *)(_w(strsec->sh_offset)
          + (void *)ehdr);

 *relp = rel0;
}
