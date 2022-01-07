
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotation_write_ops {int write_graph; int printf; int set_jumps_percent_color; int set_percent_color; int set_color; int obj; int width; int change_color; int current_entry; int first_line; } ;
struct annotation_options {int percent_type; } ;
struct annotation_line {int dummy; } ;
struct annotation {int dummy; } ;


 int __annotation_line__write (struct annotation_line*,struct annotation*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void annotation_line__write(struct annotation_line *al, struct annotation *notes,
       struct annotation_write_ops *wops,
       struct annotation_options *opts)
{
 __annotation_line__write(al, notes, wops->first_line, wops->current_entry,
     wops->change_color, wops->width, wops->obj,
     opts->percent_type,
     wops->set_color, wops->set_percent_color,
     wops->set_jumps_percent_color, wops->printf,
     wops->write_graph);
}
