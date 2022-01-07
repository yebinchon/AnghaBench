
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_iter {int dummy; } ;
struct klist {int dummy; } ;


 int klist_iter_init_node (struct klist*,struct klist_iter*,int *) ;

void klist_iter_init(struct klist *k, struct klist_iter *i)
{
 klist_iter_init_node(k, i, ((void*)0));
}
