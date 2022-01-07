
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int LINUX_MIB_TCPMEMORYPRESSURESCHRONO ;
 int NET_ADD_STATS (int ,int ,int ) ;
 int READ_ONCE (int ) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int sock_net (struct sock*) ;
 int tcp_memory_pressure ;
 unsigned long xchg (int *,int ) ;

void tcp_leave_memory_pressure(struct sock *sk)
{
 unsigned long val;

 if (!READ_ONCE(tcp_memory_pressure))
  return;
 val = xchg(&tcp_memory_pressure, 0);
 if (val)
  NET_ADD_STATS(sock_net(sk), LINUX_MIB_TCPMEMORYPRESSURESCHRONO,
         jiffies_to_msecs(jiffies - val));
}
