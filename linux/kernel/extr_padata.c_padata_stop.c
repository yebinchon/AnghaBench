
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int lock; } ;


 int __padata_stop (struct padata_instance*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void padata_stop(struct padata_instance *pinst)
{
 mutex_lock(&pinst->lock);
 __padata_stop(pinst);
 mutex_unlock(&pinst->lock);
}
