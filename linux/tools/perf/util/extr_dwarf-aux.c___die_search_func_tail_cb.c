
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __addr_die_search_param {scalar_t__ addr; int die_mem; } ;
typedef int Dwarf_Die ;
typedef scalar_t__ Dwarf_Addr ;


 int DWARF_CB_ABORT ;
 int DWARF_CB_OK ;
 scalar_t__ DW_TAG_subprogram ;
 int dwarf_highpc (int *,scalar_t__*) ;
 scalar_t__ dwarf_tag (int *) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int __die_search_func_tail_cb(Dwarf_Die *fn_die, void *data)
{
 struct __addr_die_search_param *ad = data;
 Dwarf_Addr addr = 0;

 if (dwarf_tag(fn_die) == DW_TAG_subprogram &&
     !dwarf_highpc(fn_die, &addr) &&
     addr == ad->addr) {
  memcpy(ad->die_mem, fn_die, sizeof(Dwarf_Die));
  return DWARF_CB_ABORT;
 }
 return DWARF_CB_OK;
}
