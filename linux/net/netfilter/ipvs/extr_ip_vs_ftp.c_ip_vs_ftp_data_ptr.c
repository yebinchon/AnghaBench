
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; } ;
struct sk_buff {scalar_t__ data; } ;
struct ip_vs_iphdr {int len; } ;



__attribute__((used)) static char *ip_vs_ftp_data_ptr(struct sk_buff *skb, struct ip_vs_iphdr *ipvsh)
{
 struct tcphdr *th = (struct tcphdr *)((char *)skb->data + ipvsh->len);

 if ((th->doff << 2) < sizeof(struct tcphdr))
  return ((void*)0);

 return (char *)th + (th->doff << 2);
}
