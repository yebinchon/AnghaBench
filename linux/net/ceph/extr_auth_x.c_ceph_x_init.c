
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_info {int starting; int ticket_handlers; int secret; } ;
struct ceph_auth_client {int * ops; struct ceph_x_info* private; int protocol; int key; } ;


 int CEPH_AUTH_CEPHX ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int RB_ROOT ;
 int ceph_crypto_key_clone (int *,int ) ;
 int ceph_x_ops ;
 int dout (char*,struct ceph_auth_client*) ;
 int kfree (struct ceph_x_info*) ;
 struct ceph_x_info* kzalloc (int,int ) ;
 int pr_err (char*,...) ;

int ceph_x_init(struct ceph_auth_client *ac)
{
 struct ceph_x_info *xi;
 int ret;

 dout("ceph_x_init %p\n", ac);
 ret = -ENOMEM;
 xi = kzalloc(sizeof(*xi), GFP_NOFS);
 if (!xi)
  goto out;

 ret = -EINVAL;
 if (!ac->key) {
  pr_err("no secret set (for auth_x protocol)\n");
  goto out_nomem;
 }

 ret = ceph_crypto_key_clone(&xi->secret, ac->key);
 if (ret < 0) {
  pr_err("cannot clone key: %d\n", ret);
  goto out_nomem;
 }

 xi->starting = 1;
 xi->ticket_handlers = RB_ROOT;

 ac->protocol = CEPH_AUTH_CEPHX;
 ac->private = xi;
 ac->ops = &ceph_x_ops;
 return 0;

out_nomem:
 kfree(xi);
out:
 return ret;
}
