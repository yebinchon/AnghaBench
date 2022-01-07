
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct in_device {int dev; } ;
typedef int __be32 ;


 int IN_DEV_ARP_IGNORE (struct in_device*) ;
 int RT_SCOPE_HOST ;
 int RT_SCOPE_LINK ;
 struct net* dev_net (int ) ;
 int inet_confirm_addr (struct net*,struct in_device*,int ,int ,int) ;

__attribute__((used)) static int arp_ignore(struct in_device *in_dev, __be32 sip, __be32 tip)
{
 struct net *net = dev_net(in_dev->dev);
 int scope;

 switch (IN_DEV_ARP_IGNORE(in_dev)) {
 case 0:
  return 0;
 case 1:
  sip = 0;
  scope = RT_SCOPE_HOST;
  break;
 case 2:



  scope = RT_SCOPE_HOST;
  break;
 case 3:
  sip = 0;
  scope = RT_SCOPE_LINK;
  in_dev = ((void*)0);
  break;
 case 4:
 case 5:
 case 6:
 case 7:
  return 0;
 case 8:
  return 1;
 default:
  return 0;
 }
 return !inet_confirm_addr(net, in_dev, sip, tip, scope);
}
