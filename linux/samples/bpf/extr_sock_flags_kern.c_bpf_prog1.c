
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sock {int protocol; int type; int family; } ;
typedef int fmt2 ;
typedef int fmt ;
typedef int __u64 ;
typedef int __u32 ;


 int IPPROTO_ICMPV6 ;
 int PF_INET6 ;
 int SOCK_RAW ;
 int bpf_get_current_uid_gid () ;
 int bpf_trace_printk (char*,int,int,int,...) ;

int bpf_prog1(struct bpf_sock *sk)
{
 char fmt[] = "socket: family %d type %d protocol %d\n";
 char fmt2[] = "socket: uid %u gid %u\n";
 __u64 gid_uid = bpf_get_current_uid_gid();
 __u32 uid = gid_uid & 0xffffffff;
 __u32 gid = gid_uid >> 32;

 bpf_trace_printk(fmt, sizeof(fmt), sk->family, sk->type, sk->protocol);
 bpf_trace_printk(fmt2, sizeof(fmt2), uid, gid);




 if (sk->family == PF_INET6 &&
     sk->type == SOCK_RAW &&
     sk->protocol == IPPROTO_ICMPV6)
  return 0;

 return 1;
}
