
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsos {int root; int head; } ;
struct dso {int node; } ;


 int __dsos__findnew_link_by_longname (int *,struct dso*,int *) ;
 int dso__get (struct dso*) ;
 int list_add_tail (int *,int *) ;

void __dsos__add(struct dsos *dsos, struct dso *dso)
{
 list_add_tail(&dso->node, &dsos->head);
 __dsos__findnew_link_by_longname(&dsos->root, dso, ((void*)0));
 dso__get(dso);
}
