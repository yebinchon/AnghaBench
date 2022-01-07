
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_status {int flag; scalar_t__ encoding; } ;


 scalar_t__ RX_ENC_LEGACY ;
 int RX_FLAG_MACTIME_END ;
 int RX_FLAG_MACTIME_PLCP_START ;
 int RX_FLAG_MACTIME_START ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline bool
ieee80211_have_rx_timestamp(struct ieee80211_rx_status *status)
{
 WARN_ON_ONCE(status->flag & RX_FLAG_MACTIME_START &&
       status->flag & RX_FLAG_MACTIME_END);
 if (status->flag & (RX_FLAG_MACTIME_START | RX_FLAG_MACTIME_END))
  return 1;

 if (status->flag & RX_FLAG_MACTIME_PLCP_START &&
     status->encoding == RX_ENC_LEGACY)
  return 1;
 return 0;
}
