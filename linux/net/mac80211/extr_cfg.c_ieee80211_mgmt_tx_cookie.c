
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ieee80211_local {scalar_t__ roc_cookie_counter; int mtx; } ;


 scalar_t__ WARN_ON (int) ;
 int lockdep_assert_held (int *) ;

u64 ieee80211_mgmt_tx_cookie(struct ieee80211_local *local)
{
 lockdep_assert_held(&local->mtx);

 local->roc_cookie_counter++;


 if (WARN_ON(local->roc_cookie_counter == 0))
  local->roc_cookie_counter++;

 return local->roc_cookie_counter;
}
