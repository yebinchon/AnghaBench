
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ jumps; int addr; int target; int max_addr; int min_addr; } ;
struct annotation {TYPE_2__ widths; TYPE_1__* options; } ;
struct TYPE_3__ {scalar_t__ show_nr_jumps; scalar_t__ use_offset; } ;



void annotation__update_column_widths(struct annotation *notes)
{
 if (notes->options->use_offset)
  notes->widths.target = notes->widths.min_addr;
 else
  notes->widths.target = notes->widths.max_addr;

 notes->widths.addr = notes->widths.target;

 if (notes->options->show_nr_jumps)
  notes->widths.addr += notes->widths.jumps + 1;
}
