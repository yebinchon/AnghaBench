
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 int BPF_CGROUP_RUN_PROG_INET4_CONNECT (struct sock*,struct sockaddr*) ;
 int EINVAL ;
 int sock_owned_by_me (struct sock*) ;

__attribute__((used)) static int tcp_v4_pre_connect(struct sock *sk, struct sockaddr *uaddr,
         int addr_len)
{




 if (addr_len < sizeof(struct sockaddr_in))
  return -EINVAL;

 sock_owned_by_me(sk);

 return BPF_CGROUP_RUN_PROG_INET4_CONNECT(sk, uaddr);
}
