
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_rx_data {TYPE_1__* sta; } ;
typedef int ieee80211_rx_result ;
struct TYPE_2__ {scalar_t__ cipher_scheme; } ;


 int RX_DROP_UNUSABLE ;
 int ieee80211_crypto_cs_decrypt (struct ieee80211_rx_data*) ;

ieee80211_rx_result
ieee80211_crypto_hw_decrypt(struct ieee80211_rx_data *rx)
{
 if (rx->sta && rx->sta->cipher_scheme)
  return ieee80211_crypto_cs_decrypt(rx);

 return RX_DROP_UNUSABLE;
}
