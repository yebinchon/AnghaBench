
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ reg_state; } ;
typedef int gfp_t ;


 scalar_t__ NETREG_REGISTERED ;
 struct sk_buff* rtmsg_ifinfo_build_skb (int,struct net_device*,unsigned int,int ,int ,int*,int) ;
 int rtmsg_ifinfo_send (struct sk_buff*,struct net_device*,int ) ;

__attribute__((used)) static void rtmsg_ifinfo_event(int type, struct net_device *dev,
          unsigned int change, u32 event,
          gfp_t flags, int *new_nsid, int new_ifindex)
{
 struct sk_buff *skb;

 if (dev->reg_state != NETREG_REGISTERED)
  return;

 skb = rtmsg_ifinfo_build_skb(type, dev, change, event, flags, new_nsid,
         new_ifindex);
 if (skb)
  rtmsg_ifinfo_send(skb, dev, flags);
}
