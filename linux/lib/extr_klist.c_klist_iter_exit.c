
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_iter {int * i_cur; } ;


 int klist_put (int *,int) ;

void klist_iter_exit(struct klist_iter *i)
{
 if (i->i_cur) {
  klist_put(i->i_cur, 0);
  i->i_cur = ((void*)0);
 }
}
