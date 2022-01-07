
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int DW_AT_location ;
 scalar_t__ DW_FORM_sec_offset ;
 int DW_TAG_formal_parameter ;
 int DW_TAG_variable ;
 scalar_t__ dwarf_attr_integrate (int *,int ,int *) ;
 int dwarf_tag (int *) ;
 scalar_t__ dwarf_whatform (int *) ;

__attribute__((used)) static bool die_has_loclist(Dwarf_Die *vr_die)
{
 Dwarf_Attribute loc;
 int tag = dwarf_tag(vr_die);

 if (tag != DW_TAG_formal_parameter &&
     tag != DW_TAG_variable)
  return 0;

 return (dwarf_attr_integrate(vr_die, DW_AT_location, &loc) &&
  dwarf_whatform(&loc) == DW_FORM_sec_offset);
}
