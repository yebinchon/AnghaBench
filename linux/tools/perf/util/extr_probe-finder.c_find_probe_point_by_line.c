
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_finder {int cu_die; } ;


 int die_walk_lines (int *,int ,struct probe_finder*) ;
 int probe_point_line_walker ;

__attribute__((used)) static int find_probe_point_by_line(struct probe_finder *pf)
{
 return die_walk_lines(&pf->cu_die, probe_point_line_walker, pf);
}
