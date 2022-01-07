
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;


 int DIE_FIND_CB_END ;
 int DIE_FIND_CB_SIBLING ;
 scalar_t__ DW_TAG_member ;
 scalar_t__ die_compare_name (int *,char const*) ;
 scalar_t__ die_find_member (int *,char const*,int *) ;
 scalar_t__ die_get_type (int *,int *) ;
 int dwarf_diename (int *) ;
 scalar_t__ dwarf_tag (int *) ;

__attribute__((used)) static int __die_find_member_cb(Dwarf_Die *die_mem, void *data)
{
 const char *name = data;

 if (dwarf_tag(die_mem) == DW_TAG_member) {
  if (die_compare_name(die_mem, name))
   return DIE_FIND_CB_END;
  else if (!dwarf_diename(die_mem)) {
   Dwarf_Die type_die, tmp_die;
   if (die_get_type(die_mem, &type_die) &&
       die_find_member(&type_die, name, &tmp_die))
    return DIE_FIND_CB_END;
  }
 }
 return DIE_FIND_CB_SIBLING;
}
