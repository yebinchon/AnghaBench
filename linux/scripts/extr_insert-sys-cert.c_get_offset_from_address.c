
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int e_shoff; unsigned int e_shnum; } ;
struct TYPE_4__ {unsigned int sh_size; unsigned long sh_addr; unsigned long sh_offset; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef TYPE_2__ Elf_Ehdr ;


 unsigned int SHN_UNDEF ;

__attribute__((used)) static unsigned long get_offset_from_address(Elf_Ehdr *hdr, unsigned long addr)
{
 Elf_Shdr *x;
 unsigned int i, num_sections;

 x = (void *)hdr + hdr->e_shoff;
 if (hdr->e_shnum == SHN_UNDEF)
  num_sections = x[0].sh_size;
 else
  num_sections = hdr->e_shnum;

 for (i = 1; i < num_sections; i++) {
  unsigned long start = x[i].sh_addr;
  unsigned long end = start + x[i].sh_size;
  unsigned long offset = x[i].sh_offset;

  if (addr >= start && addr <= end)
   return addr - start + offset;
 }
 return 0;
}
