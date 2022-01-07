
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int LINUX_MIB_TCPMEMORYPRESSURES ;
 int NET_INC_STATS (int ,int ) ;
 scalar_t__ READ_ONCE (int ) ;
 int cmpxchg (int *,int ,unsigned long) ;
 unsigned long jiffies ;
 int sock_net (struct sock*) ;
 int tcp_memory_pressure ;

void tcp_enter_memory_pressure(struct sock *sk)
{
 unsigned long val;

 if (READ_ONCE(tcp_memory_pressure))
  return;
 val = jiffies;

 if (!val)
  val--;
 if (!cmpxchg(&tcp_memory_pressure, 0, val))
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPMEMORYPRESSURES);
}
