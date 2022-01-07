
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dsa_notifier_info {struct net_device* dev; } ;


 int atomic_notifier_call_chain (int *,unsigned long,struct dsa_notifier_info*) ;
 int dsa_notif_chain ;

int call_dsa_notifiers(unsigned long val, struct net_device *dev,
         struct dsa_notifier_info *info)
{
 info->dev = dev;
 return atomic_notifier_call_chain(&dsa_notif_chain, val, info);
}
