
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_authorizer {int dummy; } ;
struct ceph_authorizer {int dummy; } ;


 int ceph_x_authorizer_cleanup (struct ceph_x_authorizer*) ;
 int kfree (struct ceph_x_authorizer*) ;

__attribute__((used)) static void ceph_x_destroy_authorizer(struct ceph_authorizer *a)
{
 struct ceph_x_authorizer *au = (void *)a;

 ceph_x_authorizer_cleanup(au);
 kfree(au);
}
