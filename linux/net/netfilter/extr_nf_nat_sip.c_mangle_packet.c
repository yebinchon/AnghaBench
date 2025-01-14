
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct tcphdr {int doff; } ;
struct sk_buff {char* data; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 scalar_t__ IPPROTO_TCP ;
 int __nf_nat_mangle_tcp_packet (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,unsigned int,char const*,unsigned int,int) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 scalar_t__ nf_ct_protonum (struct nf_conn*) ;
 int nf_nat_mangle_udp_packet (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,unsigned int,char const*,unsigned int) ;

__attribute__((used)) static unsigned int mangle_packet(struct sk_buff *skb, unsigned int protoff,
      unsigned int dataoff,
      const char **dptr, unsigned int *datalen,
      unsigned int matchoff, unsigned int matchlen,
      const char *buffer, unsigned int buflen)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);
 struct tcphdr *th;
 unsigned int baseoff;

 if (nf_ct_protonum(ct) == IPPROTO_TCP) {
  th = (struct tcphdr *)(skb->data + protoff);
  baseoff = protoff + th->doff * 4;
  matchoff += dataoff - baseoff;

  if (!__nf_nat_mangle_tcp_packet(skb, ct, ctinfo,
      protoff, matchoff, matchlen,
      buffer, buflen, 0))
   return 0;
 } else {
  baseoff = protoff + sizeof(struct udphdr);
  matchoff += dataoff - baseoff;

  if (!nf_nat_mangle_udp_packet(skb, ct, ctinfo,
           protoff, matchoff, matchlen,
           buffer, buflen))
   return 0;
 }


 *dptr = skb->data + dataoff;
 *datalen += buflen - matchlen;
 return 1;
}
