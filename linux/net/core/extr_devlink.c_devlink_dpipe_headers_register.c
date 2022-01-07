
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_headers {int dummy; } ;
struct devlink {int lock; struct devlink_dpipe_headers* dpipe_headers; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devlink_dpipe_headers_register(struct devlink *devlink,
       struct devlink_dpipe_headers *dpipe_headers)
{
 mutex_lock(&devlink->lock);
 devlink->dpipe_headers = dpipe_headers;
 mutex_unlock(&devlink->lock);
 return 0;
}
