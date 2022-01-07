
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int __sum16 ;




 int nf_ip6_checksum_partial (struct sk_buff*,unsigned int,unsigned int,unsigned int,int ) ;
 int nf_ip_checksum_partial (struct sk_buff*,unsigned int,unsigned int,unsigned int,int ) ;

__sum16 nf_checksum_partial(struct sk_buff *skb, unsigned int hook,
       unsigned int dataoff, unsigned int len,
       u8 protocol, unsigned short family)
{
 __sum16 csum = 0;

 switch (family) {
 case 129:
  csum = nf_ip_checksum_partial(skb, hook, dataoff, len,
           protocol);
  break;
 case 128:
  csum = nf_ip6_checksum_partial(skb, hook, dataoff, len,
            protocol);
  break;
 }

 return csum;
}
