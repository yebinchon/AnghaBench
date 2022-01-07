
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;


 int DW_TAG_const_type ;
 int DW_TAG_restrict_type ;
 int DW_TAG_shared_type ;
 int DW_TAG_volatile_type ;
 int * die_get_type (int *,int *) ;
 int dwarf_tag (int *) ;

__attribute__((used)) static Dwarf_Die *__die_get_real_type(Dwarf_Die *vr_die, Dwarf_Die *die_mem)
{
 int tag;

 do {
  vr_die = die_get_type(vr_die, die_mem);
  if (!vr_die)
   break;
  tag = dwarf_tag(vr_die);
 } while (tag == DW_TAG_const_type ||
   tag == DW_TAG_restrict_type ||
   tag == DW_TAG_volatile_type ||
   tag == DW_TAG_shared_type);

 return vr_die;
}
