
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_authorizer {int (* destroy ) (struct ceph_authorizer*) ;} ;


 int stub1 (struct ceph_authorizer*) ;

void ceph_auth_destroy_authorizer(struct ceph_authorizer *a)
{
 a->destroy(a);
}
