
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int flags; } ;
struct dst_entry {int dummy; } ;
typedef int __be32 ;


 int IFF_NOARP ;
 struct sk_buff* arp_create (int,int,int ,struct net_device*,int ,unsigned char const*,unsigned char const*,unsigned char const*) ;
 int arp_xmit (struct sk_buff*) ;
 int dst_clone (struct dst_entry*) ;
 int skb_dst_set (struct sk_buff*,int ) ;

__attribute__((used)) static void arp_send_dst(int type, int ptype, __be32 dest_ip,
    struct net_device *dev, __be32 src_ip,
    const unsigned char *dest_hw,
    const unsigned char *src_hw,
    const unsigned char *target_hw,
    struct dst_entry *dst)
{
 struct sk_buff *skb;


 if (dev->flags & IFF_NOARP)
  return;

 skb = arp_create(type, ptype, dest_ip, dev, src_ip,
    dest_hw, src_hw, target_hw);
 if (!skb)
  return;

 skb_dst_set(skb, dst_clone(dst));
 arp_xmit(skb);
}
