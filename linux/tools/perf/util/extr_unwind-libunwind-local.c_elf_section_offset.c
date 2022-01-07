
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int sh_offset; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int GElf_Ehdr ;
typedef int Elf ;


 int PERF_ELF_C_READ_MMAP ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_section_by_name (int *,int *,TYPE_1__*,char const*,int *) ;
 int * gelf_getehdr (int *,int *) ;

__attribute__((used)) static u64 elf_section_offset(int fd, const char *name)
{
 Elf *elf;
 GElf_Ehdr ehdr;
 GElf_Shdr shdr;
 u64 offset = 0;

 elf = elf_begin(fd, PERF_ELF_C_READ_MMAP, ((void*)0));
 if (elf == ((void*)0))
  return 0;

 do {
  if (gelf_getehdr(elf, &ehdr) == ((void*)0))
   break;

  if (!elf_section_by_name(elf, &ehdr, &shdr, name, ((void*)0)))
   break;

  offset = shdr.sh_offset;
 } while (0);

 elf_end(elf);
 return offset;
}
