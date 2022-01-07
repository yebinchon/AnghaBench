
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int e_phnum; } ;
struct TYPE_3__ {scalar_t__ p_type; int p_offset; int p_filesz; } ;
typedef TYPE_1__ Elf32_Phdr ;
typedef TYPE_2__ Elf32_Ehdr ;


 int EINVAL ;
 int PAGE_SIZE ;
 scalar_t__ PT_NOTE ;
 int stack_map_parse_build_id (void*,unsigned char*,void*,int ) ;

__attribute__((used)) static int stack_map_get_build_id_32(void *page_addr,
         unsigned char *build_id)
{
 Elf32_Ehdr *ehdr = (Elf32_Ehdr *)page_addr;
 Elf32_Phdr *phdr;
 int i;


 if (ehdr->e_phnum >
     (PAGE_SIZE - sizeof(Elf32_Ehdr)) / sizeof(Elf32_Phdr))
  return -EINVAL;

 phdr = (Elf32_Phdr *)(page_addr + sizeof(Elf32_Ehdr));

 for (i = 0; i < ehdr->e_phnum; ++i)
  if (phdr[i].p_type == PT_NOTE)
   return stack_map_parse_build_id(page_addr, build_id,
     page_addr + phdr[i].p_offset,
     phdr[i].p_filesz);
 return -EINVAL;
}
