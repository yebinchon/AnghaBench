
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int name; } ;
struct ieee80211_local {TYPE_4__ radio_led; TYPE_3__ assoc_led; TYPE_2__ tx_led; TYPE_1__ rx_led; } ;


 int kfree (int ) ;

void ieee80211_free_led_names(struct ieee80211_local *local)
{
 kfree(local->rx_led.name);
 kfree(local->tx_led.name);
 kfree(local->assoc_led.name);
 kfree(local->radio_led.name);
}
