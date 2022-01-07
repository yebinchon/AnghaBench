
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t e_phnum; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf ;


 TYPE_1__* gelf_getehdr (int *,TYPE_1__*) ;

__attribute__((used)) static int elf_getphdrnum(Elf *elf, size_t *dst)
{
 GElf_Ehdr gehdr;
 GElf_Ehdr *ehdr;

 ehdr = gelf_getehdr(elf, &gehdr);
 if (!ehdr)
  return -1;

 *dst = ehdr->e_phnum;

 return 0;
}
