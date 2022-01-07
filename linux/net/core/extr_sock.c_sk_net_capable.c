
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int user_ns; } ;


 int sk_ns_capable (struct sock const*,int ,int) ;
 TYPE_1__* sock_net (struct sock const*) ;

bool sk_net_capable(const struct sock *sk, int cap)
{
 return sk_ns_capable(sk, sock_net(sk)->user_ns, cap);
}
