
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; int check; } ;
struct sk_buff {unsigned char* data; } ;
struct nf_conn_synproxy {scalar_t__ tsoff; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int __be32 ;


 int CTINFO2DIR (int) ;
 int IP_CT_DIR_REPLY ;
 unsigned char TCPOLEN_TIMESTAMP ;


 unsigned char TCPOPT_TIMESTAMP ;
 int htonl (scalar_t__) ;
 int inet_proto_csum_replace4 (int *,struct sk_buff*,int ,int ,int) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static unsigned int
synproxy_tstamp_adjust(struct sk_buff *skb, unsigned int protoff,
         struct tcphdr *th, struct nf_conn *ct,
         enum ip_conntrack_info ctinfo,
         const struct nf_conn_synproxy *synproxy)
{
 unsigned int optoff, optend;
 __be32 *ptr, old;

 if (synproxy->tsoff == 0)
  return 1;

 optoff = protoff + sizeof(struct tcphdr);
 optend = protoff + th->doff * 4;

 if (skb_ensure_writable(skb, optend))
  return 0;

 while (optoff < optend) {
  unsigned char *op = skb->data + optoff;

  switch (op[0]) {
  case 129:
   return 1;
  case 128:
   optoff++;
   continue;
  default:
   if (optoff + 1 == optend ||
       optoff + op[1] > optend ||
       op[1] < 2)
    return 0;
   if (op[0] == TCPOPT_TIMESTAMP &&
       op[1] == TCPOLEN_TIMESTAMP) {
    if (CTINFO2DIR(ctinfo) == IP_CT_DIR_REPLY) {
     ptr = (__be32 *)&op[2];
     old = *ptr;
     *ptr = htonl(ntohl(*ptr) -
           synproxy->tsoff);
    } else {
     ptr = (__be32 *)&op[6];
     old = *ptr;
     *ptr = htonl(ntohl(*ptr) +
           synproxy->tsoff);
    }
    inet_proto_csum_replace4(&th->check, skb,
        old, *ptr, 0);
    return 1;
   }
   optoff += op[1];
  }
 }
 return 1;
}
