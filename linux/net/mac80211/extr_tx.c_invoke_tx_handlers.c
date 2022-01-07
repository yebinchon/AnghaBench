
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_data {int dummy; } ;


 int invoke_tx_handlers_early (struct ieee80211_tx_data*) ;
 int invoke_tx_handlers_late (struct ieee80211_tx_data*) ;

__attribute__((used)) static int invoke_tx_handlers(struct ieee80211_tx_data *tx)
{
 int r = invoke_tx_handlers_early(tx);

 if (r)
  return r;
 return invoke_tx_handlers_late(tx);
}
