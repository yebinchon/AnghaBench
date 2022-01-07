
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vif_device {unsigned long rate_limit; unsigned short flags; unsigned char threshold; int link; scalar_t__ pkt_out; scalar_t__ pkt_in; scalar_t__ bytes_out; scalar_t__ bytes_in; int * dev; } ;
struct net_device {int ifindex; } ;


 int dev_get_iflink (struct net_device*) ;

void vif_device_init(struct vif_device *v,
       struct net_device *dev,
       unsigned long rate_limit,
       unsigned char threshold,
       unsigned short flags,
       unsigned short get_iflink_mask)
{
 v->dev = ((void*)0);
 v->bytes_in = 0;
 v->bytes_out = 0;
 v->pkt_in = 0;
 v->pkt_out = 0;
 v->rate_limit = rate_limit;
 v->flags = flags;
 v->threshold = threshold;
 if (v->flags & get_iflink_mask)
  v->link = dev_get_iflink(dev);
 else
  v->link = dev->ifindex;
}
