
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int syn; int type; } ;
struct sk_buff {int dummy; } ;
struct sctphdr {int dummy; } ;
struct sctp_chunkhdr {int syn; int type; } ;
struct ip_vs_iphdr {int protocol; int len; } ;
typedef int schunk ;
typedef int _tcph ;




 int SCTP_CID_INIT ;
 struct tcphdr* skb_header_pointer (struct sk_buff const*,int ,int,struct tcphdr*) ;

__attribute__((used)) static inline bool is_new_conn(const struct sk_buff *skb,
          struct ip_vs_iphdr *iph)
{
 switch (iph->protocol) {
 case 128: {
  struct tcphdr _tcph, *th;

  th = skb_header_pointer(skb, iph->len, sizeof(_tcph), &_tcph);
  if (th == ((void*)0))
   return 0;
  return th->syn;
 }
 case 129: {
  struct sctp_chunkhdr *sch, schunk;

  sch = skb_header_pointer(skb, iph->len + sizeof(struct sctphdr),
      sizeof(schunk), &schunk);
  if (sch == ((void*)0))
   return 0;
  return sch->type == SCTP_CID_INIT;
 }
 default:
  return 0;
 }
}
