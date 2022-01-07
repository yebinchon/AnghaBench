
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int __be32 ;


 int arp_send_dst (int,int,int ,struct net_device*,int ,unsigned char const*,unsigned char const*,unsigned char const*,int *) ;

void arp_send(int type, int ptype, __be32 dest_ip,
       struct net_device *dev, __be32 src_ip,
       const unsigned char *dest_hw, const unsigned char *src_hw,
       const unsigned char *target_hw)
{
 arp_send_dst(type, ptype, dest_ip, dev, src_ip, dest_hw, src_hw,
       target_hw, ((void*)0));
}
