
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct debuginfo {int mod; int bias; } ;
struct TYPE_4__ {scalar_t__ sh_offset; int sh_addr; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elf_Scn ;
typedef int Elf32_Word ;
typedef int Elf ;
typedef int Dwarf_Addr ;


 int EINVAL ;
 int ENOENT ;
 int * dwfl_module_getelf (int ,int *) ;
 char* dwfl_module_relocation_info (int ,int,int *) ;
 int dwfl_module_relocations (int ) ;
 int * elf_getscn (int *,int ) ;
 TYPE_1__* gelf_getshdr (int *,TYPE_1__*) ;
 scalar_t__ strcmp (char const*,char*) ;

int debuginfo__get_text_offset(struct debuginfo *dbg, Dwarf_Addr *offs,
    bool adjust_offset)
{
 int n, i;
 Elf32_Word shndx;
 Elf_Scn *scn;
 Elf *elf;
 GElf_Shdr mem, *shdr;
 const char *p;

 elf = dwfl_module_getelf(dbg->mod, &dbg->bias);
 if (!elf)
  return -EINVAL;


 n = dwfl_module_relocations(dbg->mod);
 if (n < 0)
  return -ENOENT;

 for (i = 0; i < n; i++) {
  p = dwfl_module_relocation_info(dbg->mod, i, &shndx);
  if (strcmp(p, ".text") == 0) {

   scn = elf_getscn(elf, shndx);
   if (!scn)
    return -ENOENT;
   shdr = gelf_getshdr(scn, &mem);
   if (!shdr)
    return -ENOENT;
   *offs = shdr->sh_addr;
   if (adjust_offset)
    *offs -= shdr->sh_offset;
  }
 }
 return 0;
}
