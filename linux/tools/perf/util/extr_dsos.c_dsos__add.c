
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsos {int lock; } ;
struct dso {int dummy; } ;


 int __dsos__add (struct dsos*,struct dso*) ;
 int down_write (int *) ;
 int up_write (int *) ;

void dsos__add(struct dsos *dsos, struct dso *dso)
{
 down_write(&dsos->lock);
 __dsos__add(dsos, dso);
 up_write(&dsos->lock);
}
