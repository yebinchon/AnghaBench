
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 scalar_t__ cfg80211_is_all_idle () ;
 int regulatory_hint_disconnect () ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void disconnect_work(struct work_struct *work)
{
 rtnl_lock();
 if (cfg80211_is_all_idle())
  regulatory_hint_disconnect();
 rtnl_unlock();
}
