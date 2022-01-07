
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_auth_handshake {int dummy; } ;
struct ceph_auth_client {int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* update_authorizer ) (struct ceph_auth_client*,int,struct ceph_auth_handshake*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ceph_auth_client*,int,struct ceph_auth_handshake*) ;

int ceph_auth_update_authorizer(struct ceph_auth_client *ac,
    int peer_type,
    struct ceph_auth_handshake *a)
{
 int ret = 0;

 mutex_lock(&ac->mutex);
 if (ac->ops && ac->ops->update_authorizer)
  ret = ac->ops->update_authorizer(ac, peer_type, a);
 mutex_unlock(&ac->mutex);
 return ret;
}
