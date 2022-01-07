
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ atom; scalar_t__ number; } ;
typedef scalar_t__ Dwarf_Word ;
typedef TYPE_1__ Dwarf_Op ;
typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int DW_AT_data_member_location ;
 scalar_t__ DW_OP_plus_uconst ;
 int ENOENT ;
 int ENOTSUP ;
 int * dwarf_attr (int *,int ,int *) ;
 scalar_t__ dwarf_formudata (int *,scalar_t__*) ;
 int dwarf_getlocation (int *,TYPE_1__**,size_t*) ;
 int pr_debug (char*,scalar_t__,size_t) ;

int die_get_data_member_location(Dwarf_Die *mb_die, Dwarf_Word *offs)
{
 Dwarf_Attribute attr;
 Dwarf_Op *expr;
 size_t nexpr;
 int ret;

 if (dwarf_attr(mb_die, DW_AT_data_member_location, &attr) == ((void*)0))
  return -ENOENT;

 if (dwarf_formudata(&attr, offs) != 0) {

  ret = dwarf_getlocation(&attr, &expr, &nexpr);
  if (ret < 0 || nexpr == 0)
   return -ENOENT;

  if (expr[0].atom != DW_OP_plus_uconst || nexpr != 1) {
   pr_debug("Unable to get offset:Unexpected OP %x (%zd)\n",
     expr[0].atom, nexpr);
   return -ENOTSUP;
  }
  *offs = (Dwarf_Word)expr[0].number;
 }
 return 0;
}
