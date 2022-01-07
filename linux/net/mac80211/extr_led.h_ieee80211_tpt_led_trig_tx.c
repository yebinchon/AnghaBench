
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {TYPE_1__* tpt_led_trigger; int tpt_led_active; } ;
typedef int __le16 ;
struct TYPE_2__ {int tx_bytes; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ ieee80211_is_data (int ) ;

__attribute__((used)) static inline void
ieee80211_tpt_led_trig_tx(struct ieee80211_local *local, __le16 fc, int bytes)
{




}
