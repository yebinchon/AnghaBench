
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_auth_client {int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* is_authenticated ) (struct ceph_auth_client*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ceph_auth_client*) ;

int ceph_auth_is_authenticated(struct ceph_auth_client *ac)
{
 int ret = 0;

 mutex_lock(&ac->mutex);
 if (ac->ops)
  ret = ac->ops->is_authenticated(ac);
 mutex_unlock(&ac->mutex);
 return ret;
}
