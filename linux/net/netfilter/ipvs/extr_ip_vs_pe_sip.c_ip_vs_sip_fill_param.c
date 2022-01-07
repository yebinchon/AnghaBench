
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct sk_buff {unsigned int len; char* data; } ;
struct ip_vs_iphdr {scalar_t__ protocol; int len; } ;
struct ip_vs_conn_param {unsigned int pe_data_len; int pe_data; int af; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ get_callid (char const*,int ,unsigned int,unsigned int*,unsigned int*) ;
 int ip_vs_fill_iph_skb (int ,struct sk_buff*,int,struct ip_vs_iphdr*) ;
 int kmemdup (char const*,unsigned int,int ) ;
 int skb_linearize (struct sk_buff*) ;

__attribute__((used)) static int
ip_vs_sip_fill_param(struct ip_vs_conn_param *p, struct sk_buff *skb)
{
 struct ip_vs_iphdr iph;
 unsigned int dataoff, datalen, matchoff, matchlen;
 const char *dptr;
 int retc;

 retc = ip_vs_fill_iph_skb(p->af, skb, 0, &iph);


 if (!retc || iph.protocol != IPPROTO_UDP)
  return -EINVAL;



 dataoff = iph.len + sizeof(struct udphdr);

 if (dataoff >= skb->len)
  return -EINVAL;
 retc = skb_linearize(skb);
 if (retc < 0)
  return retc;
 dptr = skb->data + dataoff;
 datalen = skb->len - dataoff;

 if (get_callid(dptr, 0, datalen, &matchoff, &matchlen))
  return -EINVAL;




 p->pe_data = kmemdup(dptr + matchoff, matchlen, GFP_ATOMIC);
 if (!p->pe_data)
  return -ENOMEM;

 p->pe_data_len = matchlen;

 return 0;
}
