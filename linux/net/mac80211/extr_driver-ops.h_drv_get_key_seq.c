
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_key_seq {int dummy; } ;
struct ieee80211_key {int conf; } ;
struct TYPE_2__ {int (* get_key_seq ) (int *,int *,struct ieee80211_key_seq*) ;} ;


 int stub1 (int *,int *,struct ieee80211_key_seq*) ;
 int trace_drv_get_key_seq (struct ieee80211_local*,int *) ;

__attribute__((used)) static inline void drv_get_key_seq(struct ieee80211_local *local,
       struct ieee80211_key *key,
       struct ieee80211_key_seq *seq)
{
 if (local->ops->get_key_seq)
  local->ops->get_key_seq(&local->hw, &key->conf, seq);
 trace_drv_get_key_seq(local, &key->conf);
}
