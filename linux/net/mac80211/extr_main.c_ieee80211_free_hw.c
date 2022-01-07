
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {int sband_allocated; TYPE_1__ hw; int ack_status_frames; scalar_t__ wiphy_ciphers_allocated; int mtx; int iflist_mtx; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_4__ {int * bands; int cipher_suites; } ;


 int BIT (int) ;
 int NUM_NL80211_BANDS ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,int *) ;
 int ieee80211_free_ack_frame ;
 int ieee80211_free_led_names (struct ieee80211_local*) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int sta_info_stop (struct ieee80211_local*) ;
 int wiphy_free (TYPE_2__*) ;

void ieee80211_free_hw(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);
 enum nl80211_band band;

 mutex_destroy(&local->iflist_mtx);
 mutex_destroy(&local->mtx);

 if (local->wiphy_ciphers_allocated)
  kfree(local->hw.wiphy->cipher_suites);

 idr_for_each(&local->ack_status_frames,
       ieee80211_free_ack_frame, ((void*)0));
 idr_destroy(&local->ack_status_frames);

 sta_info_stop(local);

 ieee80211_free_led_names(local);

 for (band = 0; band < NUM_NL80211_BANDS; band++) {
  if (!(local->sband_allocated & BIT(band)))
   continue;
  kfree(local->hw.wiphy->bands[band]);
 }

 wiphy_free(local->hw.wiphy);
}
