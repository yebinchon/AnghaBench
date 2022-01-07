
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_info {int max_stack; } ;
typedef int Dwfl_Frame ;
typedef int Dwarf_Addr ;


 int DWARF_CB_ABORT ;
 int DWARF_CB_OK ;
 int dwfl_errmsg (int) ;
 int dwfl_frame_pc (int *,int *,int*) ;
 scalar_t__ entry (int ,struct unwind_info*) ;
 int pr_err (char*,int ) ;
 int report_module (int ,struct unwind_info*) ;

__attribute__((used)) static int
frame_callback(Dwfl_Frame *state, void *arg)
{
 struct unwind_info *ui = arg;
 Dwarf_Addr pc;
 bool isactivation;

 if (!dwfl_frame_pc(state, &pc, ((void*)0))) {
  pr_err("%s", dwfl_errmsg(-1));
  return DWARF_CB_ABORT;
 }


 report_module(pc, ui);

 if (!dwfl_frame_pc(state, &pc, &isactivation)) {
  pr_err("%s", dwfl_errmsg(-1));
  return DWARF_CB_ABORT;
 }

 if (!isactivation)
  --pc;

 return entry(pc, ui) || !(--ui->max_stack) ?
        DWARF_CB_ABORT : DWARF_CB_OK;
}
