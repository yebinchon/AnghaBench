
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int rblist; } ;


 int rblist__add_node (int *,char const*) ;

int strlist__add(struct strlist *slist, const char *new_entry)
{
 return rblist__add_node(&slist->rblist, new_entry);
}
