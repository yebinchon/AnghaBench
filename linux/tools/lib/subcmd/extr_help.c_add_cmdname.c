
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdnames {scalar_t__ cnt; struct cmdname** names; int alloc; } ;
struct cmdname {size_t len; scalar_t__* name; } ;


 int ALLOC_GROW (struct cmdname**,scalar_t__,int ) ;
 struct cmdname* malloc (int) ;
 int memcpy (scalar_t__*,char const*,size_t) ;

void add_cmdname(struct cmdnames *cmds, const char *name, size_t len)
{
 struct cmdname *ent = malloc(sizeof(*ent) + len + 1);

 ent->len = len;
 memcpy(ent->name, name, len);
 ent->name[len] = 0;

 ALLOC_GROW(cmds->names, cmds->cnt + 1, cmds->alloc);
 cmds->names[cmds->cnt++] = ent;
}
