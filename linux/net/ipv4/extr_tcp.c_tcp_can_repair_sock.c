
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct TYPE_2__ {int user_ns; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ TCP_LISTEN ;
 scalar_t__ ns_capable (int ,int ) ;
 TYPE_1__* sock_net (struct sock const*) ;

__attribute__((used)) static inline bool tcp_can_repair_sock(const struct sock *sk)
{
 return ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN) &&
  (sk->sk_state != TCP_LISTEN);
}
