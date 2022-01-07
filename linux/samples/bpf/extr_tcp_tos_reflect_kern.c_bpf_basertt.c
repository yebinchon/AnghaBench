
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tos ;
struct ipv6hdr {int priority; int* flow_lbl; } ;
struct iphdr {int tos; } ;
struct bpf_sock_ops {int reply; int family; scalar_t__ op; } ;
typedef int save_syn ;


 int AF_INET ;


 int IPV6_TCLASS ;
 int IP_TOS ;
 int SOL_IP ;
 int SOL_IPV6 ;
 int SOL_TCP ;
 int TCP_SAVED_SYN ;
 int TCP_SAVE_SYN ;
 int bpf_getsockopt (struct bpf_sock_ops*,int ,int ,char*,int) ;
 int bpf_printk (char*,int) ;
 int bpf_setsockopt (struct bpf_sock_ops*,int ,int ,int*,int) ;

int bpf_basertt(struct bpf_sock_ops *skops)
{
 char header[sizeof(struct ipv6hdr)];
 struct ipv6hdr *hdr6;
 struct iphdr *hdr;
 int hdr_size = 0;
 int save_syn = 1;
 int tos = 0;
 int rv = 0;
 int op;

 op = (int) skops->op;




 switch (op) {
 case 128:
  rv = bpf_setsockopt(skops, SOL_TCP, TCP_SAVE_SYN,
       &save_syn, sizeof(save_syn));
  break;
 case 129:
  if (skops->family == AF_INET)
   hdr_size = sizeof(struct iphdr);
  else
   hdr_size = sizeof(struct ipv6hdr);
  rv = bpf_getsockopt(skops, SOL_TCP, TCP_SAVED_SYN,
        header, hdr_size);
  if (!rv) {
   if (skops->family == AF_INET) {
    hdr = (struct iphdr *) header;
    tos = hdr->tos;
    if (tos != 0)
     bpf_setsockopt(skops, SOL_IP, IP_TOS,
             &tos, sizeof(tos));
   } else {
    hdr6 = (struct ipv6hdr *) header;
    tos = ((hdr6->priority) << 4 |
           (hdr6->flow_lbl[0]) >> 4);
    if (tos)
     bpf_setsockopt(skops, SOL_IPV6,
             IPV6_TCLASS,
             &tos, sizeof(tos));
   }
   rv = 0;
  }
  break;
 default:
  rv = -1;
 }



 skops->reply = rv;
 return 1;
}
