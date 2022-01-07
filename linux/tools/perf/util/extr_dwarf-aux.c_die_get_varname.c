
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int Dwarf_Die ;


 int die_get_typename (int *,struct strbuf*) ;
 int dwarf_diename (int *) ;
 int pr_debug (char*) ;
 int strbuf_add (struct strbuf*,char*,int) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;

int die_get_varname(Dwarf_Die *vr_die, struct strbuf *buf)
{
 int ret;

 ret = die_get_typename(vr_die, buf);
 if (ret < 0) {
  pr_debug("Failed to get type, make it unknown.\n");
  ret = strbuf_add(buf, " (unknown_type)", 14);
 }

 return ret < 0 ? ret : strbuf_addf(buf, "\t%s", dwarf_diename(vr_die));
}
