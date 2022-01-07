
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned char operstate; } ;
struct hsr_priv {int announce_timer; scalar_t__ announce_count; } ;


 int HSR_ANNOUNCE_INTERVAL ;
 unsigned char IF_OPER_UP ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct hsr_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void hsr_check_announce(struct net_device *hsr_dev,
          unsigned char old_operstate)
{
 struct hsr_priv *hsr;

 hsr = netdev_priv(hsr_dev);

 if (hsr_dev->operstate == IF_OPER_UP && old_operstate != IF_OPER_UP) {

  hsr->announce_count = 0;
  mod_timer(&hsr->announce_timer,
     jiffies + msecs_to_jiffies(HSR_ANNOUNCE_INTERVAL));
 }

 if (hsr_dev->operstate != IF_OPER_UP && old_operstate == IF_OPER_UP)

  del_timer(&hsr->announce_timer);
}
