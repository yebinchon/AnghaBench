
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_auth_none_info {int starting; } ;
struct ceph_auth_client {int * ops; struct ceph_auth_none_info* private; int protocol; } ;


 int CEPH_AUTH_NONE ;
 int ENOMEM ;
 int GFP_NOFS ;
 int ceph_auth_none_ops ;
 int dout (char*,struct ceph_auth_client*) ;
 struct ceph_auth_none_info* kzalloc (int,int ) ;

int ceph_auth_none_init(struct ceph_auth_client *ac)
{
 struct ceph_auth_none_info *xi;

 dout("ceph_auth_none_init %p\n", ac);
 xi = kzalloc(sizeof(*xi), GFP_NOFS);
 if (!xi)
  return -ENOMEM;

 xi->starting = 1;

 ac->protocol = CEPH_AUTH_NONE;
 ac->private = xi;
 ac->ops = &ceph_auth_none_ops;
 return 0;
}
