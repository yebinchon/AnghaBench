
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_auth_client {int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* should_authenticate ) (struct ceph_auth_client*) ;} ;


 int ceph_build_auth_request (struct ceph_auth_client*,void*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ stub1 (struct ceph_auth_client*) ;

int ceph_build_auth(struct ceph_auth_client *ac,
      void *msg_buf, size_t msg_len)
{
 int ret = 0;

 mutex_lock(&ac->mutex);
 if (ac->ops->should_authenticate(ac))
  ret = ceph_build_auth_request(ac, msg_buf, msg_len);
 mutex_unlock(&ac->mutex);
 return ret;
}
