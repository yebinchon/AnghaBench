
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int sk_cgrp_data; } ;


 int cgroup_sk_update_lock ;
 int sock_cgroup_set_classid (int *,unsigned long) ;
 struct socket* sock_from_file (struct file*,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int update_classid_sock(const void *v, struct file *file, unsigned n)
{
 int err;
 struct socket *sock = sock_from_file(file, &err);

 if (sock) {
  spin_lock(&cgroup_sk_update_lock);
  sock_cgroup_set_classid(&sock->sk->sk_cgrp_data,
     (unsigned long)v);
  spin_unlock(&cgroup_sk_update_lock);
 }
 return 0;
}
