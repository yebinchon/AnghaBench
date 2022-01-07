
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int lock; int * dpipe_headers; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void devlink_dpipe_headers_unregister(struct devlink *devlink)
{
 mutex_lock(&devlink->lock);
 devlink->dpipe_headers = ((void*)0);
 mutex_unlock(&devlink->lock);
}
