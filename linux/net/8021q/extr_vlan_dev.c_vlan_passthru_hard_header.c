
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_priv {struct net_device* real_dev; } ;
struct sk_buff {int dummy; } ;
struct net_device {void* dev_addr; } ;


 int dev_hard_header (struct sk_buff*,struct net_device*,unsigned short,void const*,void const*,unsigned int) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static int vlan_passthru_hard_header(struct sk_buff *skb, struct net_device *dev,
         unsigned short type,
         const void *daddr, const void *saddr,
         unsigned int len)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 struct net_device *real_dev = vlan->real_dev;

 if (saddr == ((void*)0))
  saddr = dev->dev_addr;

 return dev_hard_header(skb, real_dev, type, daddr, saddr, len);
}
