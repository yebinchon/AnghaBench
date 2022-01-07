
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_authorizer {int dummy; } ;
struct ceph_auth_client {int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* add_authorizer_challenge ) (struct ceph_auth_client*,struct ceph_authorizer*,void*,int) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ceph_auth_client*,struct ceph_authorizer*,void*,int) ;

int ceph_auth_add_authorizer_challenge(struct ceph_auth_client *ac,
           struct ceph_authorizer *a,
           void *challenge_buf,
           int challenge_buf_len)
{
 int ret = 0;

 mutex_lock(&ac->mutex);
 if (ac->ops && ac->ops->add_authorizer_challenge)
  ret = ac->ops->add_authorizer_challenge(ac, a, challenge_buf,
       challenge_buf_len);
 mutex_unlock(&ac->mutex);
 return ret;
}
