
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int elf; } ;
struct bpf_object {TYPE_1__ efile; } ;
struct TYPE_6__ {int sh_flags; } ;
typedef TYPE_2__ GElf_Shdr ;
typedef int Elf_Scn ;


 int SHF_EXECINSTR ;
 int * elf_getscn (int ,int) ;
 TYPE_2__* gelf_getshdr (int *,TYPE_2__*) ;

__attribute__((used)) static bool section_have_execinstr(struct bpf_object *obj, int idx)
{
 Elf_Scn *scn;
 GElf_Shdr sh;

 scn = elf_getscn(obj->efile.elf, idx);
 if (!scn)
  return 0;

 if (gelf_getshdr(scn, &sh) != &sh)
  return 0;

 if (sh.sh_flags & SHF_EXECINSTR)
  return 1;

 return 0;
}
