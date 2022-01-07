
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ d_buf; } ;
struct TYPE_6__ {scalar_t__* e_ident; } ;
typedef int GElf_Shdr ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef TYPE_2__ Elf_Data ;
typedef int Elf ;


 size_t EI_CLASS ;
 scalar_t__ ELFCLASS32 ;
 int O_RDONLY ;
 int PERF_ELF_C_READ_MMAP ;
 int close (int) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 TYPE_2__* elf_getdata (int *,int *) ;
 int * elf_section_by_name (int *,TYPE_1__*,int *,char*,int *) ;
 int * gelf_getehdr (int *,TYPE_1__*) ;
 int open (char const*,int ) ;
 char* strdup (char*) ;

__attribute__((used)) static char *find_module_name(const char *module)
{
 int fd;
 Elf *elf;
 GElf_Ehdr ehdr;
 GElf_Shdr shdr;
 Elf_Data *data;
 Elf_Scn *sec;
 char *mod_name = ((void*)0);
 int name_offset;

 fd = open(module, O_RDONLY);
 if (fd < 0)
  return ((void*)0);

 elf = elf_begin(fd, PERF_ELF_C_READ_MMAP, ((void*)0));
 if (elf == ((void*)0))
  goto elf_err;

 if (gelf_getehdr(elf, &ehdr) == ((void*)0))
  goto ret_err;

 sec = elf_section_by_name(elf, &ehdr, &shdr,
   ".gnu.linkonce.this_module", ((void*)0));
 if (!sec)
  goto ret_err;

 data = elf_getdata(sec, ((void*)0));
 if (!data || !data->d_buf)
  goto ret_err;
 if (ehdr.e_ident[EI_CLASS] == ELFCLASS32)
  name_offset = 12;
 else
  name_offset = 24;

 mod_name = strdup((char *)data->d_buf + name_offset);

ret_err:
 elf_end(elf);
elf_err:
 close(fd);
 return mod_name;
}
