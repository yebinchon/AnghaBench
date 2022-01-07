
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line_finder {int found; TYPE_1__* lr; int cu_die; } ;
struct TYPE_2__ {int path; int line_list; } ;
typedef int Dwarf_Die ;


 int die_walk_lines (int *,int ,struct line_finder*) ;
 int intlist__empty (int ) ;
 int line_range_walk_cb ;
 int zfree (int *) ;

__attribute__((used)) static int find_line_range_by_line(Dwarf_Die *sp_die, struct line_finder *lf)
{
 int ret;

 ret = die_walk_lines(sp_die ?: &lf->cu_die, line_range_walk_cb, lf);


 if (ret >= 0)
  if (!intlist__empty(lf->lr->line_list))
   ret = lf->found = 1;
  else
   ret = 0;
 else {
  zfree(&lf->lr->path);
 }
 return ret;
}
