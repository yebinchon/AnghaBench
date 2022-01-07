
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_info {int starting; scalar_t__ server_challenge; } ;
struct ceph_auth_client {struct ceph_x_info* private; } ;


 int dout (char*) ;

__attribute__((used)) static void ceph_x_reset(struct ceph_auth_client *ac)
{
 struct ceph_x_info *xi = ac->private;

 dout("reset\n");
 xi->starting = 1;
 xi->server_challenge = 0;
}
