
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct probe_finder {int addr; int machine; int sp_die; int fb_ops; } ;
struct local_vars_finder {size_t nargs; struct probe_finder* pf; TYPE_1__* args; int ret; scalar_t__ vars; } ;
struct TYPE_2__ {char* var; } ;
typedef int Dwarf_Die ;


 int DIE_FIND_CB_CONTINUE ;
 int DIE_FIND_CB_END ;
 int DIE_FIND_CB_SIBLING ;
 int DW_TAG_formal_parameter ;
 int DW_TAG_variable ;
 int ENOMEM ;
 scalar_t__ convert_variable_location (int *,int ,int ,int *,int ,int *) ;
 scalar_t__ dwarf_diename (int *) ;
 scalar_t__ dwarf_haspc (int *,int ) ;
 int dwarf_tag (int *) ;
 int pr_debug (char*,char*) ;

__attribute__((used)) static int copy_variables_cb(Dwarf_Die *die_mem, void *data)
{
 struct local_vars_finder *vf = data;
 struct probe_finder *pf = vf->pf;
 int tag;

 tag = dwarf_tag(die_mem);
 if (tag == DW_TAG_formal_parameter ||
     (tag == DW_TAG_variable && vf->vars)) {
  if (convert_variable_location(die_mem, vf->pf->addr,
           vf->pf->fb_ops, &pf->sp_die,
           pf->machine, ((void*)0)) == 0) {
   vf->args[vf->nargs].var = (char *)dwarf_diename(die_mem);
   if (vf->args[vf->nargs].var == ((void*)0)) {
    vf->ret = -ENOMEM;
    return DIE_FIND_CB_END;
   }
   pr_debug(" %s", vf->args[vf->nargs].var);
   vf->nargs++;
  }
 }

 if (dwarf_haspc(die_mem, vf->pf->addr))
  return DIE_FIND_CB_CONTINUE;
 else
  return DIE_FIND_CB_SIBLING;
}
