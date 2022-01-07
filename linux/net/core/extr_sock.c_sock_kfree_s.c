
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __sock_kfree_s (struct sock*,void*,int,int) ;

void sock_kfree_s(struct sock *sk, void *mem, int size)
{
 __sock_kfree_s(sk, mem, size, 0);
}
