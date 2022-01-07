
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int rblist; } ;


 int rblist__delete (int *) ;

void strlist__delete(struct strlist *slist)
{
 if (slist != ((void*)0))
  rblist__delete(&slist->rblist);
}
