
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct __instance_walk_param {scalar_t__ addr; scalar_t__ retval; int data; scalar_t__ (* callback ) (TYPE_1__*,int ) ;} ;
struct TYPE_12__ {scalar_t__ addr; } ;
typedef TYPE_1__ Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int DIE_FIND_CB_CONTINUE ;
 int DIE_FIND_CB_END ;
 int DW_AT_abstract_origin ;
 scalar_t__ DW_TAG_inlined_subroutine ;
 int die_get_call_fileno (TYPE_1__*) ;
 int die_get_call_lineno (TYPE_1__*) ;
 int die_get_decl_fileno (TYPE_1__*) ;
 int * dwarf_attr (TYPE_1__*,int ,int *) ;
 int dwarf_decl_line (TYPE_1__*,int*) ;
 TYPE_1__* dwarf_formref_die (int *,TYPE_1__*) ;
 scalar_t__ dwarf_tag (TYPE_1__*) ;
 scalar_t__ stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int __die_walk_instances_cb(Dwarf_Die *inst, void *data)
{
 struct __instance_walk_param *iwp = data;
 Dwarf_Attribute attr_mem;
 Dwarf_Die origin_mem;
 Dwarf_Attribute *attr;
 Dwarf_Die *origin;
 int tmp;

 attr = dwarf_attr(inst, DW_AT_abstract_origin, &attr_mem);
 if (attr == ((void*)0))
  return DIE_FIND_CB_CONTINUE;

 origin = dwarf_formref_die(attr, &origin_mem);
 if (origin == ((void*)0) || origin->addr != iwp->addr)
  return DIE_FIND_CB_CONTINUE;


 if (dwarf_tag(inst) == DW_TAG_inlined_subroutine) {
  dwarf_decl_line(origin, &tmp);
  if (die_get_call_lineno(inst) == tmp) {
   tmp = die_get_decl_fileno(origin);
   if (die_get_call_fileno(inst) == tmp)
    return DIE_FIND_CB_CONTINUE;
  }
 }

 iwp->retval = iwp->callback(inst, iwp->data);

 return (iwp->retval) ? DIE_FIND_CB_END : DIE_FIND_CB_CONTINUE;
}
