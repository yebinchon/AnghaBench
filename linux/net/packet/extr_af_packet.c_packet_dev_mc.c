
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_mclist {int type; int addr; int alen; } ;
struct net_device {int addr_len; } ;


 int EINVAL ;




 int dev_mc_add (struct net_device*,int ) ;
 int dev_mc_del (struct net_device*,int ) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_uc_add (struct net_device*,int ) ;
 int dev_uc_del (struct net_device*,int ) ;

__attribute__((used)) static int packet_dev_mc(struct net_device *dev, struct packet_mclist *i,
    int what)
{
 switch (i->type) {
 case 130:
  if (i->alen != dev->addr_len)
   return -EINVAL;
  if (what > 0)
   return dev_mc_add(dev, i->addr);
  else
   return dev_mc_del(dev, i->addr);
  break;
 case 129:
  return dev_set_promiscuity(dev, what);
 case 131:
  return dev_set_allmulti(dev, what);
 case 128:
  if (i->alen != dev->addr_len)
   return -EINVAL;
  if (what > 0)
   return dev_uc_add(dev, i->addr);
  else
   return dev_uc_del(dev, i->addr);
  break;
 default:
  break;
 }
 return 0;
}
