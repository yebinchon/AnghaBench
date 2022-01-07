
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c2c_hist_entry {int * hists; } ;
struct c2c_dimension {int width; } ;
struct TYPE_2__ {int hists; } ;


 TYPE_1__ c2c ;
 struct c2c_dimension dim_dcacheline_node ;
 struct c2c_dimension dim_offset_node ;

__attribute__((used)) static void set_node_width(struct c2c_hist_entry *c2c_he, int len)
{
 struct c2c_dimension *dim;

 dim = &c2c.hists == c2c_he->hists ?
       &dim_dcacheline_node : &dim_offset_node;

 if (len > dim->width)
  dim->width = len;
}
