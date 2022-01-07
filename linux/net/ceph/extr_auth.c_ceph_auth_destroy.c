
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_auth_client {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* destroy ) (struct ceph_auth_client*) ;} ;


 int dout (char*,struct ceph_auth_client*) ;
 int kfree (struct ceph_auth_client*) ;
 int stub1 (struct ceph_auth_client*) ;

void ceph_auth_destroy(struct ceph_auth_client *ac)
{
 dout("auth_destroy %p\n", ac);
 if (ac->ops)
  ac->ops->destroy(ac);
 kfree(ac);
}
