
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __line_walk_param {int (* callback ) (char const*,int,int ,void*) ;void* data; int retval; } ;
typedef int (* line_walk_callback_t ) (char const*,int,int ,void*) ;
typedef int Dwarf_Lines ;
typedef int Dwarf_Line ;
typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 scalar_t__ DW_TAG_compile_unit ;
 int EINVAL ;
 int ENOENT ;
 int __die_walk_culines_cb ;
 int __die_walk_funclines (int *,int,int (*) (char const*,int,int ,void*),void*) ;
 scalar_t__ die_find_inlinefunc (int *,int ,int *) ;
 char const* dwarf_decl_file (int *) ;
 int dwarf_decl_line (int *,int*) ;
 int * dwarf_diecu (int *,int *,int *,int *) ;
 int dwarf_getfuncs (int *,int ,struct __line_walk_param*,int ) ;
 scalar_t__ dwarf_getsrclines (int *,int **,size_t*) ;
 int dwarf_haspc (int *,int ) ;
 scalar_t__ dwarf_lineaddr (int *,int *) ;
 scalar_t__ dwarf_lineno (int *,int*) ;
 char* dwarf_linesrc (int *,int *,int *) ;
 int * dwarf_onesrcline (int *,size_t) ;
 scalar_t__ dwarf_tag (int *) ;
 int pr_debug2 (char*,...) ;

int die_walk_lines(Dwarf_Die *rt_die, line_walk_callback_t callback, void *data)
{
 Dwarf_Lines *lines;
 Dwarf_Line *line;
 Dwarf_Addr addr;
 const char *fname, *decf = ((void*)0);
 int lineno, ret = 0;
 int decl = 0, inl;
 Dwarf_Die die_mem, *cu_die;
 size_t nlines, i;


 if (dwarf_tag(rt_die) != DW_TAG_compile_unit) {
  cu_die = dwarf_diecu(rt_die, &die_mem, ((void*)0), ((void*)0));
  dwarf_decl_line(rt_die, &decl);
  decf = dwarf_decl_file(rt_die);
 } else
  cu_die = rt_die;
 if (!cu_die) {
  pr_debug2("Failed to get CU from given DIE.\n");
  return -EINVAL;
 }


 if (dwarf_getsrclines(cu_die, &lines, &nlines) != 0) {
  pr_debug2("Failed to get source lines on this CU.\n");
  return -ENOENT;
 }
 pr_debug2("Get %zd lines from this CU\n", nlines);


 for (i = 0; i < nlines; i++) {
  line = dwarf_onesrcline(lines, i);
  if (line == ((void*)0) ||
      dwarf_lineno(line, &lineno) != 0 ||
      dwarf_lineaddr(line, &addr) != 0) {
   pr_debug2("Failed to get line info. "
      "Possible error in debuginfo.\n");
   continue;
  }

  if (rt_die != cu_die) {





   if (!dwarf_haspc(rt_die, addr))
    continue;
   if (die_find_inlinefunc(rt_die, addr, &die_mem)) {
    dwarf_decl_line(&die_mem, &inl);
    if (inl != decl ||
        decf != dwarf_decl_file(&die_mem))
     continue;
   }
  }

  fname = dwarf_linesrc(line, ((void*)0), ((void*)0));

  ret = callback(fname, lineno, addr, data);
  if (ret != 0)
   return ret;
 }





 if (rt_die != cu_die)




  ret = __die_walk_funclines(rt_die, 0, callback, data);
 else {
  struct __line_walk_param param = {
   .callback = callback,
   .data = data,
   .retval = 0,
  };
  dwarf_getfuncs(cu_die, __die_walk_culines_cb, &param, 0);
  ret = param.retval;
 }

 return ret;
}
