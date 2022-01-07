
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int e_shstrndx; } ;
struct TYPE_6__ {int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef int Elf ;


 int elf_getscn (int *,int ) ;
 int * elf_nextscn (int *,int *) ;
 int elf_rawdata (int ,int *) ;
 char* elf_strptr (int *,int ,int ) ;
 int gelf_getshdr (int *,TYPE_1__*) ;
 int strcmp (char const*,char*) ;

Elf_Scn *elf_section_by_name(Elf *elf, GElf_Ehdr *ep,
        GElf_Shdr *shp, const char *name, size_t *idx)
{
 Elf_Scn *sec = ((void*)0);
 size_t cnt = 1;


 if (!elf_rawdata(elf_getscn(elf, ep->e_shstrndx), ((void*)0)))
  return ((void*)0);

 while ((sec = elf_nextscn(elf, sec)) != ((void*)0)) {
  char *str;

  gelf_getshdr(sec, shp);
  str = elf_strptr(elf, ep->e_shstrndx, shp->sh_name);
  if (str && !strcmp(name, str)) {
   if (idx)
    *idx = cnt;
   return sec;
  }
  ++cnt;
 }

 return ((void*)0);
}
