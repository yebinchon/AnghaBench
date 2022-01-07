
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsos {int lock; } ;


 int dsos__purge (struct dsos*) ;
 int exit_rwsem (int *) ;

__attribute__((used)) static void dsos__exit(struct dsos *dsos)
{
 dsos__purge(dsos);
 exit_rwsem(&dsos->lock);
}
