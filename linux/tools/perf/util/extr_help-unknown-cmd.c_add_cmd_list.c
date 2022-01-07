
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdnames {unsigned int cnt; unsigned int alloc; int * names; } ;


 unsigned int alloc_nr (unsigned int) ;
 void* realloc (int *,int) ;
 int zfree (int **) ;

__attribute__((used)) static int add_cmd_list(struct cmdnames *cmds, struct cmdnames *old)
{
 unsigned int i, nr = cmds->cnt + old->cnt;
 void *tmp;

 if (nr > cmds->alloc) {

  if (alloc_nr(cmds->alloc) < nr)
   cmds->alloc = nr;
  else
   cmds->alloc = alloc_nr(cmds->alloc);
  tmp = realloc(cmds->names, cmds->alloc * sizeof(*cmds->names));
  if (!tmp)
   return -1;
  cmds->names = tmp;
 }
 for (i = 0; i < old->cnt; i++)
  cmds->names[cmds->cnt++] = old->names[i];
 zfree(&old->names);
 old->cnt = 0;
 return 0;
}
