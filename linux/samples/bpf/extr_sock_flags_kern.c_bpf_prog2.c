
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sock {int protocol; int type; int family; } ;
typedef int fmt ;


 int IPPROTO_ICMP ;
 int PF_INET ;
 int SOCK_RAW ;
 int bpf_trace_printk (char*,int,int ,int ,int ) ;

int bpf_prog2(struct bpf_sock *sk)
{
 char fmt[] = "socket: family %d type %d protocol %d\n";

 bpf_trace_printk(fmt, sizeof(fmt), sk->family, sk->type, sk->protocol);




 if (sk->family == PF_INET &&
     sk->type == SOCK_RAW &&
     sk->protocol == IPPROTO_ICMP)
  return 0;

 return 1;
}
