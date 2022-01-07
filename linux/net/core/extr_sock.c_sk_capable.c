
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int init_user_ns ;
 int sk_ns_capable (struct sock const*,int *,int) ;

bool sk_capable(const struct sock *sk, int cap)
{
 return sk_ns_capable(sk, &init_user_ns, cap);
}
