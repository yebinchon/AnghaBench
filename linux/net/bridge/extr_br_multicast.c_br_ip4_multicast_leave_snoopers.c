
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dev; } ;
struct in_device {int dummy; } ;


 int GFP_ATOMIC ;
 int INADDR_ALLSNOOPERS_GROUP ;
 scalar_t__ WARN_ON (int) ;
 int __ip_mc_dec_group (struct in_device*,int ,int ) ;
 int htonl (int ) ;
 struct in_device* in_dev_get (int ) ;
 int in_dev_put (struct in_device*) ;

__attribute__((used)) static void br_ip4_multicast_leave_snoopers(struct net_bridge *br)
{
 struct in_device *in_dev = in_dev_get(br->dev);

 if (WARN_ON(!in_dev))
  return;

 __ip_mc_dec_group(in_dev, htonl(INADDR_ALLSNOOPERS_GROUP), GFP_ATOMIC);
 in_dev_put(in_dev);
}
