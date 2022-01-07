
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;
struct iphdr {int dummy; } ;


 int EINVAL ;
 int check_header (struct sk_buff*,unsigned int) ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 unsigned int skb_network_offset (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_iphdr(struct sk_buff *skb)
{
 unsigned int nh_ofs = skb_network_offset(skb);
 unsigned int ip_len;
 int err;

 err = check_header(skb, nh_ofs + sizeof(struct iphdr));
 if (unlikely(err))
  return err;

 ip_len = ip_hdrlen(skb);
 if (unlikely(ip_len < sizeof(struct iphdr) ||
       skb->len < nh_ofs + ip_len))
  return -EINVAL;

 skb_set_transport_header(skb, nh_ofs + ip_len);
 return 0;
}
