
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {scalar_t__* args; } ;


 int kfree (void*) ;

__attribute__((used)) static int nl80211_dump_wiphy_done(struct netlink_callback *cb)
{
 kfree((void *)cb->args[0]);
 return 0;
}
