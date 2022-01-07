
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_delete; int node_new; int node_cmp; } ;
struct intlist {TYPE_1__ rblist; } ;


 int intlist__delete (struct intlist*) ;
 int intlist__node_cmp ;
 int intlist__node_delete ;
 int intlist__node_new ;
 scalar_t__ intlist__parse_list (struct intlist*,char const*) ;
 struct intlist* malloc (int) ;
 int rblist__init (TYPE_1__*) ;

struct intlist *intlist__new(const char *slist)
{
 struct intlist *ilist = malloc(sizeof(*ilist));

 if (ilist != ((void*)0)) {
  rblist__init(&ilist->rblist);
  ilist->rblist.node_cmp = intlist__node_cmp;
  ilist->rblist.node_new = intlist__node_new;
  ilist->rblist.node_delete = intlist__node_delete;

  if (slist && intlist__parse_list(ilist, slist))
   goto out_delete;
 }

 return ilist;
out_delete:
 intlist__delete(ilist);
 return ((void*)0);
}
