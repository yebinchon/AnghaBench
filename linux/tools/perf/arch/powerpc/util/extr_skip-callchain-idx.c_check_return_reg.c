
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ atom; scalar_t__ number2; scalar_t__ offset; int number; } ;
typedef TYPE_1__ Dwarf_Op ;
typedef int Dwarf_Frame ;


 scalar_t__ DW_OP_bregx ;
 scalar_t__ DW_OP_regx ;
 int dwarf_errmsg (int) ;
 int dwarf_frame_cfa (int *,TYPE_1__**,size_t*) ;
 int dwarf_frame_register (int *,int,TYPE_1__*,TYPE_1__**,size_t*) ;
 int pr_debug (char*,int,...) ;

__attribute__((used)) static int check_return_reg(int ra_regno, Dwarf_Frame *frame)
{
 Dwarf_Op ops_mem[2];
 Dwarf_Op dummy;
 Dwarf_Op *ops = &dummy;
 size_t nops;
 int result;

 result = dwarf_frame_register(frame, ra_regno, ops_mem, &ops, &nops);
 if (result < 0) {
  pr_debug("dwarf_frame_register() %s\n", dwarf_errmsg(-1));
  return -1;
 }






 if ((nops != 0 || ops != ((void*)0)) &&
  !(nops == 1 && ops[0].atom == DW_OP_regx &&
   ops[0].number2 == 0 && ops[0].offset == 0))
  return 0;





 result = dwarf_frame_cfa(frame, &ops, &nops);
 if (result < 0) {
  pr_debug("dwarf_frame_cfa() returns %d, %s\n", result,
     dwarf_errmsg(-1));
  return -1;
 }




 if (nops == 1 && ops[0].atom == DW_OP_bregx && ops[0].number == 1 &&
    ops[0].number2 == 0)
  return 1;




 return 2;
}
