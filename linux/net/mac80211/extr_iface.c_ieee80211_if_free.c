
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tstats; } ;


 int free_percpu (int ) ;

__attribute__((used)) static void ieee80211_if_free(struct net_device *dev)
{
 free_percpu(dev->tstats);
}
