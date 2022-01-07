
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 int BPF_CGROUP_RUN_PROG_INET6_CONNECT (struct sock*,struct sockaddr*) ;
 int EINVAL ;
 int SIN6_LEN_RFC2133 ;
 int sock_owned_by_me (struct sock*) ;

__attribute__((used)) static int tcp_v6_pre_connect(struct sock *sk, struct sockaddr *uaddr,
         int addr_len)
{




 if (addr_len < SIN6_LEN_RFC2133)
  return -EINVAL;

 sock_owned_by_me(sk);

 return BPF_CGROUP_RUN_PROG_INET6_CONNECT(sk, uaddr);
}
