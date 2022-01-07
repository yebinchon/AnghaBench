
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_auth_none_info {int starting; } ;
struct ceph_auth_client {struct ceph_auth_none_info* private; } ;



__attribute__((used)) static void reset(struct ceph_auth_client *ac)
{
 struct ceph_auth_none_info *xi = ac->private;

 xi->starting = 1;
}
