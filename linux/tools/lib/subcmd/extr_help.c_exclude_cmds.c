
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdnames {size_t cnt; TYPE_1__** names; } ;
struct TYPE_2__ {int name; } ;


 int strcmp (int ,int ) ;

void exclude_cmds(struct cmdnames *cmds, struct cmdnames *excludes)
{
 size_t ci, cj, ei;
 int cmp;

 ci = cj = ei = 0;
 while (ci < cmds->cnt && ei < excludes->cnt) {
  cmp = strcmp(cmds->names[ci]->name, excludes->names[ei]->name);
  if (cmp < 0)
   cmds->names[cj++] = cmds->names[ci++];
  else if (cmp == 0)
   ci++, ei++;
  else if (cmp > 0)
   ei++;
 }

 while (ci < cmds->cnt)
  cmds->names[cj++] = cmds->names[ci++];

 cmds->cnt = cj;
}
