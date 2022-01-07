
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __line_walk_param {scalar_t__ retval; scalar_t__ (* callback ) (char const*,int,scalar_t__,int ) ;int data; int recursive; } ;
typedef int Dwarf_Die ;
typedef scalar_t__ Dwarf_Addr ;


 int DIE_FIND_CB_CONTINUE ;
 int DIE_FIND_CB_END ;
 int DIE_FIND_CB_SIBLING ;
 scalar_t__ DW_TAG_inlined_subroutine ;
 char* die_get_call_file (int *) ;
 int die_get_call_lineno (int *) ;
 char* dwarf_decl_file (int *) ;
 scalar_t__ dwarf_decl_line (int *,int*) ;
 scalar_t__ dwarf_entrypc (int *,scalar_t__*) ;
 scalar_t__ dwarf_tag (int *) ;
 scalar_t__ stub1 (char const*,int,scalar_t__,int ) ;
 scalar_t__ stub2 (char const*,int,scalar_t__,int ) ;

__attribute__((used)) static int __die_walk_funclines_cb(Dwarf_Die *in_die, void *data)
{
 struct __line_walk_param *lw = data;
 Dwarf_Addr addr = 0;
 const char *fname;
 int lineno;

 if (dwarf_tag(in_die) == DW_TAG_inlined_subroutine) {
  fname = die_get_call_file(in_die);
  lineno = die_get_call_lineno(in_die);
  if (fname && lineno > 0 && dwarf_entrypc(in_die, &addr) == 0) {
   lw->retval = lw->callback(fname, lineno, addr, lw->data);
   if (lw->retval != 0)
    return DIE_FIND_CB_END;
  }
 }
 if (!lw->recursive)

  return DIE_FIND_CB_SIBLING;

 if (addr) {
  fname = dwarf_decl_file(in_die);
  if (fname && dwarf_decl_line(in_die, &lineno) == 0) {
   lw->retval = lw->callback(fname, lineno, addr, lw->data);
   if (lw->retval != 0)
    return DIE_FIND_CB_END;
  }
 }


 return DIE_FIND_CB_CONTINUE;
}
