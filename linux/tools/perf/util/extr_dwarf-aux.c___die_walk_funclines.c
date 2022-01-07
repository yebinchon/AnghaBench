
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __line_walk_param {int recursive; scalar_t__ (* callback ) (char const*,int,int ,void*) ;void* data; scalar_t__ retval; } ;
typedef scalar_t__ (* line_walk_callback_t ) (char const*,int,int ,void*) ;
typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int __die_walk_funclines_cb ;
 int die_find_child (int *,int ,struct __line_walk_param*,int *) ;
 char* dwarf_decl_file (int *) ;
 scalar_t__ dwarf_decl_line (int *,int*) ;
 scalar_t__ dwarf_entrypc (int *,int *) ;

__attribute__((used)) static int __die_walk_funclines(Dwarf_Die *sp_die, bool recursive,
    line_walk_callback_t callback, void *data)
{
 struct __line_walk_param lw = {
  .recursive = recursive,
  .callback = callback,
  .data = data,
  .retval = 0,
 };
 Dwarf_Die die_mem;
 Dwarf_Addr addr;
 const char *fname;
 int lineno;


 fname = dwarf_decl_file(sp_die);
 if (fname && dwarf_decl_line(sp_die, &lineno) == 0 &&
     dwarf_entrypc(sp_die, &addr) == 0) {
  lw.retval = callback(fname, lineno, addr, data);
  if (lw.retval != 0)
   goto done;
 }
 die_find_child(sp_die, __die_walk_funclines_cb, &lw, &die_mem);
done:
 return lw.retval;
}
