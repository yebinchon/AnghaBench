
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {TYPE_2__* sk; } ;
struct TYPE_6__ {unsigned int flags; } ;
struct TYPE_5__ {size_t sk_protocol; } ;
struct TYPE_4__ {int user_ns; } ;


 int CAP_NET_ADMIN ;
 TYPE_3__* nl_table ;
 scalar_t__ ns_capable (int ,int ) ;
 TYPE_1__* sock_net (TYPE_2__*) ;

__attribute__((used)) static inline int netlink_allowed(const struct socket *sock, unsigned int flag)
{
 return (nl_table[sock->sk->sk_protocol].flags & flag) ||
  ns_capable(sock_net(sock->sk)->user_ns, CAP_NET_ADMIN);
}
