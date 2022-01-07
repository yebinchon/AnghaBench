
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_auth_client {int dummy; } ;




 int ENOENT ;
 int ceph_auth_none_init (struct ceph_auth_client*) ;
 int ceph_x_init (struct ceph_auth_client*) ;

__attribute__((used)) static int ceph_auth_init_protocol(struct ceph_auth_client *ac, int protocol)
{
 switch (protocol) {
 case 128:
  return ceph_auth_none_init(ac);
 case 129:
  return ceph_x_init(ac);
 default:
  return -ENOENT;
 }
}
