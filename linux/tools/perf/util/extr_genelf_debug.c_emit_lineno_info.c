
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ubyte ;
struct debug_entry {char* name; int lineno; unsigned long addr; } ;
struct buffer_ext {int dummy; } ;


 scalar_t__ DW_LNS_copy ;
 struct debug_entry* debug_entry_next (struct debug_entry*) ;
 int emit_advance_lineno (struct buffer_ext*,int) ;
 int emit_advance_pc (struct buffer_ext*,unsigned long) ;
 int emit_lne_define_filename (struct buffer_ext*,char*) ;
 int emit_lne_set_address (struct buffer_ext*,void*) ;
 int emit_opcode (struct buffer_ext*,scalar_t__) ;
 int emit_set_file (struct buffer_ext*,unsigned long) ;
 scalar_t__ get_special_opcode (struct debug_entry*,int,unsigned long) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void emit_lineno_info(struct buffer_ext *be,
        struct debug_entry *ent, size_t nr_entry,
        unsigned long code_addr)
{
 size_t i;
 unsigned long last_vma = code_addr;
 char const *cur_filename = ((void*)0);
 unsigned long cur_file_idx = 0;
 int last_line = 1;

 emit_lne_set_address(be, (void *)code_addr);

 for (i = 0; i < nr_entry; i++, ent = debug_entry_next(ent)) {
  int need_copy = 0;
  ubyte special_opcode;




  if (!cur_filename || strcmp(cur_filename, ent->name)) {
   emit_lne_define_filename(be, ent->name);
   cur_filename = ent->name;
   emit_set_file(be, ++cur_file_idx);
   need_copy = 1;
  }

  special_opcode = get_special_opcode(ent, last_line, last_vma);
  if (special_opcode != 0) {
   last_line = ent->lineno;
   last_vma = ent->addr;
   emit_opcode(be, special_opcode);
  } else {



   if (last_line != ent->lineno) {
    emit_advance_lineno(be, ent->lineno - last_line);
    last_line = ent->lineno;
    need_copy = 1;
   }



   if (last_vma != ent->addr) {
    emit_advance_pc(be, ent->addr - last_vma);
    last_vma = ent->addr;
    need_copy = 1;
   }



   if (need_copy)
    emit_opcode(be, DW_LNS_copy);
  }
 }
}
