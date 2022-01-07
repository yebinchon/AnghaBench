
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_authorizer {int dummy; } ;
struct ceph_auth_client {int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* verify_authorizer_reply ) (struct ceph_auth_client*,struct ceph_authorizer*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ceph_auth_client*,struct ceph_authorizer*) ;

int ceph_auth_verify_authorizer_reply(struct ceph_auth_client *ac,
          struct ceph_authorizer *a)
{
 int ret = 0;

 mutex_lock(&ac->mutex);
 if (ac->ops && ac->ops->verify_authorizer_reply)
  ret = ac->ops->verify_authorizer_reply(ac, a);
 mutex_unlock(&ac->mutex);
 return ret;
}
