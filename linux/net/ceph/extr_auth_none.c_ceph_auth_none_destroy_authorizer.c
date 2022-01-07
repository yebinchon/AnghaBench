
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_authorizer {int dummy; } ;


 int kfree (struct ceph_authorizer*) ;

__attribute__((used)) static void ceph_auth_none_destroy_authorizer(struct ceph_authorizer *a)
{
 kfree(a);
}
