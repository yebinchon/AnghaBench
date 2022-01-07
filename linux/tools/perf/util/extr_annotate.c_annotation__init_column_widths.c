
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int end; } ;
struct TYPE_2__ {int max_ins_name; int jumps; void* max_addr; void* min_addr; void* target; void* addr; } ;
struct annotation {TYPE_1__ widths; int max_jump_sources; } ;


 int annotation__max_ins_name (struct annotation*) ;
 void* hex_width (int ) ;
 int symbol__size (struct symbol*) ;
 int width_jumps (int ) ;

void annotation__init_column_widths(struct annotation *notes, struct symbol *sym)
{
 notes->widths.addr = notes->widths.target =
  notes->widths.min_addr = hex_width(symbol__size(sym));
 notes->widths.max_addr = hex_width(sym->end);
 notes->widths.jumps = width_jumps(notes->max_jump_sources);
 notes->widths.max_ins_name = annotation__max_ins_name(notes);
}
