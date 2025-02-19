
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_6__ {int sym; } ;
struct load_info {TYPE_2__ index; int strtab; TYPE_3__* sechdrs; TYPE_1__* hdr; } ;
struct TYPE_7__ {unsigned int sh_info; int sh_flags; scalar_t__ sh_type; } ;
struct TYPE_5__ {unsigned int e_shnum; } ;


 int SHF_ALLOC ;
 int SHF_RELA_LIVEPATCH ;
 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 int apply_relocate (TYPE_3__*,int ,int ,unsigned int,struct module*) ;
 int apply_relocate_add (TYPE_3__*,int ,int ,unsigned int,struct module*) ;

__attribute__((used)) static int apply_relocations(struct module *mod, const struct load_info *info)
{
 unsigned int i;
 int err = 0;


 for (i = 1; i < info->hdr->e_shnum; i++) {
  unsigned int infosec = info->sechdrs[i].sh_info;


  if (infosec >= info->hdr->e_shnum)
   continue;


  if (!(info->sechdrs[infosec].sh_flags & SHF_ALLOC))
   continue;


  if (info->sechdrs[i].sh_flags & SHF_RELA_LIVEPATCH)
   continue;

  if (info->sechdrs[i].sh_type == SHT_REL)
   err = apply_relocate(info->sechdrs, info->strtab,
          info->index.sym, i, mod);
  else if (info->sechdrs[i].sh_type == SHT_RELA)
   err = apply_relocate_add(info->sechdrs, info->strtab,
       info->index.sym, i, mod);
  if (err < 0)
   break;
 }
 return err;
}
