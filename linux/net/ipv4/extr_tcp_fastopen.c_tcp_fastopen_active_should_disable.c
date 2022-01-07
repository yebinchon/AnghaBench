
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_4__ {unsigned int sysctl_tcp_fastopen_blackhole_timeout; scalar_t__ tfo_active_disable_stamp; int tfo_active_disable_times; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;
struct TYPE_5__ {int syn_fastopen_ch; } ;


 int HZ ;
 int atomic_read (int *) ;
 int jiffies ;
 int min (int,int) ;
 TYPE_3__* sock_net (struct sock*) ;
 TYPE_2__* tcp_sk (struct sock*) ;
 scalar_t__ time_before (int ,scalar_t__) ;

bool tcp_fastopen_active_should_disable(struct sock *sk)
{
 unsigned int tfo_bh_timeout = sock_net(sk)->ipv4.sysctl_tcp_fastopen_blackhole_timeout;
 int tfo_da_times = atomic_read(&sock_net(sk)->ipv4.tfo_active_disable_times);
 unsigned long timeout;
 int multiplier;

 if (!tfo_da_times)
  return 0;


 multiplier = 1 << min(tfo_da_times - 1, 6);
 timeout = multiplier * tfo_bh_timeout * HZ;
 if (time_before(jiffies, sock_net(sk)->ipv4.tfo_active_disable_stamp + timeout))
  return 1;




 tcp_sk(sk)->syn_fastopen_ch = 1;
 return 0;
}
