
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_type; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf ;


 scalar_t__ ET_EXEC ;
 int PERF_ELF_C_READ_MMAP ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int * gelf_getehdr (int *,TYPE_1__*) ;
 int pr_debug (char*,char const*,int) ;

__attribute__((used)) static int elf_is_exec(int fd, const char *name)
{
 Elf *elf;
 GElf_Ehdr ehdr;
 int retval = 0;

 elf = elf_begin(fd, PERF_ELF_C_READ_MMAP, ((void*)0));
 if (elf == ((void*)0))
  return 0;
 if (gelf_getehdr(elf, &ehdr) == ((void*)0))
  goto out;

 retval = (ehdr.e_type == ET_EXEC);

out:
 elf_end(elf);
 pr_debug("unwind: elf_is_exec(%s): %d\n", name, retval);
 return retval;
}
