
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ sysctl_tcp_reordering; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;
struct TYPE_5__ {scalar_t__ reordering; } ;


 int const FLAG_DATA_ACKED ;
 int const FLAG_FORWARD_PROGRESS ;
 TYPE_3__* sock_net (struct sock const*) ;
 TYPE_2__* tcp_sk (struct sock const*) ;

__attribute__((used)) static inline bool tcp_may_raise_cwnd(const struct sock *sk, const int flag)
{






 if (tcp_sk(sk)->reordering > sock_net(sk)->ipv4.sysctl_tcp_reordering)
  return flag & FLAG_FORWARD_PROGRESS;

 return flag & FLAG_DATA_ACKED;
}
