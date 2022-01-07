
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long ubyte ;
struct debug_entry {unsigned int lineno; unsigned long addr; } ;
struct TYPE_2__ {unsigned int line_base; unsigned int line_range; unsigned long minimum_instruction_length; unsigned int opcode_base; } ;


 TYPE_1__ default_debug_line_header ;

__attribute__((used)) static ubyte get_special_opcode(struct debug_entry *ent,
    unsigned int last_line,
    unsigned long last_vma)
{
 unsigned int temp;
 unsigned long delta_addr;




 temp = (ent->lineno - last_line) - default_debug_line_header.line_base;

 if (temp >= default_debug_line_header.line_range)
  return 0;




 delta_addr = (ent->addr - last_vma) / default_debug_line_header.minimum_instruction_length;





 if (delta_addr <= 256 / default_debug_line_header.line_range) {
  unsigned long opcode = temp +
   (delta_addr * default_debug_line_header.line_range) +
   default_debug_line_header.opcode_base;

  return opcode <= 255 ? opcode : 0;
 }
 return 0;
}
