
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 int BPF_CGROUP_RUN_PROG_INET4_CONNECT_LOCK (struct sock*,struct sockaddr*) ;
 int EINVAL ;

int udp_pre_connect(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{




 if (addr_len < sizeof(struct sockaddr_in))
  return -EINVAL;

 return BPF_CGROUP_RUN_PROG_INET4_CONNECT_LOCK(sk, uaddr);
}
