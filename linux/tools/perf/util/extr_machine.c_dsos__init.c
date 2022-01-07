
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsos {int lock; int root; int head; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int init_rwsem (int *) ;

__attribute__((used)) static void dsos__init(struct dsos *dsos)
{
 INIT_LIST_HEAD(&dsos->head);
 dsos->root = RB_ROOT;
 init_rwsem(&dsos->lock);
}
