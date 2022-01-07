
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int len; } ;
struct iphdr {int frag_off; int ihl; int protocol; } ;
typedef int _iph ;


 int IP_OFFSET ;
 int htons (int ) ;
 int pr_debug (char*,unsigned int,int,int) ;
 struct iphdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct iphdr*) ;

__attribute__((used)) static int ipv4_get_l4proto(const struct sk_buff *skb, unsigned int nhoff,
       u_int8_t *protonum)
{
 int dataoff = -1;
 const struct iphdr *iph;
 struct iphdr _iph;

 iph = skb_header_pointer(skb, nhoff, sizeof(_iph), &_iph);
 if (!iph)
  return -1;




 if (iph->frag_off & htons(IP_OFFSET))
  return -1;

 dataoff = nhoff + (iph->ihl << 2);
 *protonum = iph->protocol;


 if (dataoff > skb->len) {
  pr_debug("bogus IPv4 packet: nhoff %u, ihl %u, skblen %u\n",
    nhoff, iph->ihl << 2, skb->len);
  return -1;
 }
 return dataoff;
}
