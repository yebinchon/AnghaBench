
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int Dwarf_Die ;


 int DW_TAG_array_type ;
 int DW_TAG_enumeration_type ;
 int DW_TAG_pointer_type ;
 int DW_TAG_structure_type ;
 int DW_TAG_subroutine_type ;
 int DW_TAG_union_type ;
 int ENOENT ;
 int * __die_get_real_type (int *,int *) ;
 int dwarf_diename (int *) ;
 int dwarf_tag (int *) ;
 int strbuf_add (struct strbuf*,char*,int) ;
 int strbuf_addf (struct strbuf*,char*,char const*,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

int die_get_typename(Dwarf_Die *vr_die, struct strbuf *buf)
{
 Dwarf_Die type;
 int tag, ret;
 const char *tmp = "";

 if (__die_get_real_type(vr_die, &type) == ((void*)0))
  return -ENOENT;

 tag = dwarf_tag(&type);
 if (tag == DW_TAG_array_type || tag == DW_TAG_pointer_type)
  tmp = "*";
 else if (tag == DW_TAG_subroutine_type) {

  return strbuf_add(buf, "(function_type)", 15);
 } else {
  if (!dwarf_diename(&type))
   return -ENOENT;
  if (tag == DW_TAG_union_type)
   tmp = "union ";
  else if (tag == DW_TAG_structure_type)
   tmp = "struct ";
  else if (tag == DW_TAG_enumeration_type)
   tmp = "enum ";

  return strbuf_addf(buf, "%s%s", tmp, dwarf_diename(&type));
 }
 ret = die_get_typename(&type, buf);
 return ret ? ret : strbuf_addstr(buf, tmp);
}
