
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_err_soft; } ;
struct TYPE_3__ {int sysctl_tcp_orphan_retries; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;


 TYPE_2__* sock_net (struct sock*) ;

__attribute__((used)) static int tcp_orphan_retries(struct sock *sk, bool alive)
{
 int retries = sock_net(sk)->ipv4.sysctl_tcp_orphan_retries;


 if (sk->sk_err_soft && !alive)
  retries = 0;




 if (retries == 0 && alive)
  retries = 8;
 return retries;
}
