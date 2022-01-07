
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 void const* sock_net (struct sock*) ;

__attribute__((used)) static const void *net_netlink_ns(struct sock *sk)
{
 return sock_net(sk);
}
