
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ pkt_type; } ;
struct net_device {int flags; } ;


 int IFF_LOOPBACK ;
 scalar_t__ PACKET_LOOPBACK ;

__attribute__((used)) static bool
rpfilter_is_loopback(const struct sk_buff *skb, const struct net_device *in)
{
 return skb->pkt_type == PACKET_LOOPBACK || in->flags & IFF_LOOPBACK;
}
