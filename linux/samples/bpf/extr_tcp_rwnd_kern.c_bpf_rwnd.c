
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sock_ops {scalar_t__ remote_port; int local_port; int reply; scalar_t__ family; scalar_t__* local_ip6; scalar_t__* remote_ip6; scalar_t__ op; } ;


 scalar_t__ AF_INET6 ;
 int BPF_SOCK_OPS_RWND_INIT ;
 int bpf_ntohl (scalar_t__) ;
 int bpf_printk (char*,int) ;

int bpf_rwnd(struct bpf_sock_ops *skops)
{
 int rv = -1;
 int op;




 if (bpf_ntohl(skops->remote_port) !=
     55601 && skops->local_port != 55601) {
  skops->reply = -1;
  return 1;
 }

 op = (int) skops->op;






 if (op == BPF_SOCK_OPS_RWND_INIT &&
  skops->family == AF_INET6) {





  if (skops->local_ip6[0] != skops->remote_ip6[0] ||
      (bpf_ntohl(skops->local_ip6[1]) & 0xfffff000) !=
      (bpf_ntohl(skops->remote_ip6[1]) & 0xfffff000))
   rv = 40;
 }



 skops->reply = rv;
 return 1;
}
