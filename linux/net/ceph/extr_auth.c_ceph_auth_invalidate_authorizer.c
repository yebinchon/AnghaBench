
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_auth_client {int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* invalidate_authorizer ) (struct ceph_auth_client*,int) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ceph_auth_client*,int) ;

void ceph_auth_invalidate_authorizer(struct ceph_auth_client *ac, int peer_type)
{
 mutex_lock(&ac->mutex);
 if (ac->ops && ac->ops->invalidate_authorizer)
  ac->ops->invalidate_authorizer(ac, peer_type);
 mutex_unlock(&ac->mutex);
}
