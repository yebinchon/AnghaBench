
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int flags; int lock; } ;


 int EINVAL ;
 int PADATA_INVALID ;
 int __padata_start (struct padata_instance*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int padata_start(struct padata_instance *pinst)
{
 int err = 0;

 mutex_lock(&pinst->lock);

 if (pinst->flags & PADATA_INVALID)
  err = -EINVAL;

 __padata_start(pinst);

 mutex_unlock(&pinst->lock);

 return err;
}
