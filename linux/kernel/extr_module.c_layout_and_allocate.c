
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_3__ {size_t pcpu; size_t mod; } ;
struct load_info {TYPE_1__ index; TYPE_2__* sechdrs; int mod; int secstrings; int hdr; } ;
struct TYPE_4__ {unsigned long sh_flags; scalar_t__ sh_addr; } ;


 struct module* ERR_PTR (int) ;
 scalar_t__ SHF_ALLOC ;
 unsigned long SHF_RO_AFTER_INIT ;
 int check_modinfo (int ,struct load_info*,int) ;
 unsigned int find_sec (struct load_info*,char*) ;
 int kmemleak_load_module (struct module*,struct load_info*) ;
 int layout_sections (int ,struct load_info*) ;
 int layout_symtab (int ,struct load_info*) ;
 int module_frob_arch_sections (int ,TYPE_2__*,int ,int ) ;
 int move_module (int ,struct load_info*) ;

__attribute__((used)) static struct module *layout_and_allocate(struct load_info *info, int flags)
{
 struct module *mod;
 unsigned int ndx;
 int err;

 err = check_modinfo(info->mod, info, flags);
 if (err)
  return ERR_PTR(err);


 err = module_frob_arch_sections(info->hdr, info->sechdrs,
     info->secstrings, info->mod);
 if (err < 0)
  return ERR_PTR(err);


 info->sechdrs[info->index.pcpu].sh_flags &= ~(unsigned long)SHF_ALLOC;






 ndx = find_sec(info, ".data..ro_after_init");
 if (ndx)
  info->sechdrs[ndx].sh_flags |= SHF_RO_AFTER_INIT;






 ndx = find_sec(info, "__jump_table");
 if (ndx)
  info->sechdrs[ndx].sh_flags |= SHF_RO_AFTER_INIT;




 layout_sections(info->mod, info);
 layout_symtab(info->mod, info);


 err = move_module(info->mod, info);
 if (err)
  return ERR_PTR(err);


 mod = (void *)info->sechdrs[info->index.mod].sh_addr;
 kmemleak_load_module(mod, info);
 return mod;
}
