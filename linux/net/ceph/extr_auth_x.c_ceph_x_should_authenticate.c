
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_info {int have_keys; } ;
struct ceph_auth_client {int want_keys; struct ceph_x_info* private; } ;


 int ceph_x_validate_tickets (struct ceph_auth_client*,int*) ;
 int dout (char*,int ,int,int ) ;

__attribute__((used)) static int ceph_x_should_authenticate(struct ceph_auth_client *ac)
{
 struct ceph_x_info *xi = ac->private;
 int need;

 ceph_x_validate_tickets(ac, &need);
 dout("ceph_x_should_authenticate want=%d need=%d have=%d\n",
      ac->want_keys, need, xi->have_keys);
 return need != 0;
}
