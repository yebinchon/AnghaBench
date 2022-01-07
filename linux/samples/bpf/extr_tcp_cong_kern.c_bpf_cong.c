
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sock_ops {scalar_t__ remote_port; int local_port; int reply; scalar_t__ family; scalar_t__* local_ip6; scalar_t__* remote_ip6; scalar_t__ op; } ;
typedef int cong ;


 scalar_t__ AF_INET6 ;



 int SOL_TCP ;
 int TCP_CONGESTION ;
 int bpf_ntohl (scalar_t__) ;
 int bpf_printk (char*,int) ;
 int bpf_setsockopt (struct bpf_sock_ops*,int ,int ,char*,int) ;

int bpf_cong(struct bpf_sock_ops *skops)
{
 char cong[] = "dctcp";
 int rv = 0;
 int op;




 if (bpf_ntohl(skops->remote_port) != 55601 &&
     skops->local_port != 55601) {
  skops->reply = -1;
  return 1;
 }

 op = (int) skops->op;
 if (skops->family == AF_INET6 &&
     skops->local_ip6[0] == skops->remote_ip6[0] &&
     (bpf_ntohl(skops->local_ip6[1]) & 0xfff00000) ==
     (bpf_ntohl(skops->remote_ip6[1]) & 0xfff00000)) {
  switch (op) {
  case 129:
   rv = 1;
   break;
  case 130:
   rv = bpf_setsockopt(skops, SOL_TCP, TCP_CONGESTION,
         cong, sizeof(cong));
   break;
  case 128:
   rv = bpf_setsockopt(skops, SOL_TCP, TCP_CONGESTION,
         cong, sizeof(cong));
   break;
  default:
   rv = -1;
  }
 } else {
  rv = -1;
 }



 skops->reply = rv;
 return 1;
}
