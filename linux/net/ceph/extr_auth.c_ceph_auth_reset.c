
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_auth_client {int negotiating; int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* reset ) (struct ceph_auth_client*) ;} ;


 int dout (char*,struct ceph_auth_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ceph_auth_client*) ;

void ceph_auth_reset(struct ceph_auth_client *ac)
{
 mutex_lock(&ac->mutex);
 dout("auth_reset %p\n", ac);
 if (ac->ops && !ac->negotiating)
  ac->ops->reset(ac);
 ac->negotiating = 1;
 mutex_unlock(&ac->mutex);
}
