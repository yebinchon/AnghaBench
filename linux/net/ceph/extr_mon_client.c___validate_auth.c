
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_mon_client {TYPE_2__* m_auth; int auth; scalar_t__ pending_auth; } ;
struct TYPE_3__ {int iov_base; } ;
struct TYPE_4__ {int front_alloc_len; TYPE_1__ front; } ;


 int __send_prepared_auth_request (struct ceph_mon_client*,int) ;
 int ceph_build_auth (int ,int ,int ) ;

__attribute__((used)) static int __validate_auth(struct ceph_mon_client *monc)
{
 int ret;

 if (monc->pending_auth)
  return 0;

 ret = ceph_build_auth(monc->auth, monc->m_auth->front.iov_base,
         monc->m_auth->front_alloc_len);
 if (ret <= 0)
  return ret;
 __send_prepared_auth_request(monc, ret);
 return 0;
}
