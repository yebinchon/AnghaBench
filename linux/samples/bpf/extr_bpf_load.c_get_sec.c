
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int e_shstrndx; } ;
struct TYPE_7__ {int sh_size; int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef int Elf_Data ;
typedef int Elf ;


 int * elf_getdata (int *,int *) ;
 int * elf_getscn (int *,int) ;
 char* elf_strptr (int *,int ,int ) ;
 TYPE_1__* gelf_getshdr (int *,TYPE_1__*) ;

__attribute__((used)) static int get_sec(Elf *elf, int i, GElf_Ehdr *ehdr, char **shname,
     GElf_Shdr *shdr, Elf_Data **data)
{
 Elf_Scn *scn;

 scn = elf_getscn(elf, i);
 if (!scn)
  return 1;

 if (gelf_getshdr(scn, shdr) != shdr)
  return 2;

 *shname = elf_strptr(elf, ehdr->e_shstrndx, shdr->sh_name);
 if (!*shname || !shdr->sh_size)
  return 3;

 *data = elf_getdata(scn, 0);
 if (!*data || elf_getdata(scn, *data) != ((void*)0))
  return 4;

 return 0;
}
