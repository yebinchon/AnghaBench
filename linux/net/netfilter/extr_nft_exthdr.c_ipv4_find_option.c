
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; } ;
struct ip_options {int optlen; int is_strictroute; int router_alert; int rr; int srr; int __data; } ;
typedef int _iph ;
typedef int __be32 ;


 int EBADMSG ;
 int ENOENT ;
 int EOPNOTSUPP ;




 scalar_t__ __ip_options_compile (struct net*,struct ip_options*,int *,int *) ;
 int memset (struct ip_options*,int ,int) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,unsigned int,int ,int) ;
 struct iphdr* skb_header_pointer (struct sk_buff*,int ,int,struct iphdr*) ;

__attribute__((used)) static int ipv4_find_option(struct net *net, struct sk_buff *skb,
       unsigned int *offset, int target)
{
 unsigned char optbuf[sizeof(struct ip_options) + 40];
 struct ip_options *opt = (struct ip_options *)optbuf;
 struct iphdr *iph, _iph;
 unsigned int start;
 bool found = 0;
 __be32 info;
 int optlen;

 iph = skb_header_pointer(skb, 0, sizeof(_iph), &_iph);
 if (!iph)
  return -EBADMSG;
 start = sizeof(struct iphdr);

 optlen = iph->ihl * 4 - (int)sizeof(struct iphdr);
 if (optlen <= 0)
  return -ENOENT;

 memset(opt, 0, sizeof(struct ip_options));



 if (skb_copy_bits(skb, start, opt->__data, optlen))
  return -EBADMSG;
 opt->optlen = optlen;

 if (__ip_options_compile(net, opt, ((void*)0), &info))
  return -EBADMSG;

 switch (target) {
 case 128:
 case 131:
  if (!opt->srr)
   break;
  found = target == 128 ? opt->is_strictroute :
            !opt->is_strictroute;
  if (found)
   *offset = opt->srr + start;
  break;
 case 129:
  if (!opt->rr)
   break;
  *offset = opt->rr + start;
  found = 1;
  break;
 case 130:
  if (!opt->router_alert)
   break;
  *offset = opt->router_alert + start;
  found = 1;
  break;
 default:
  return -EOPNOTSUPP;
 }
 return found ? target : -ENOENT;
}
