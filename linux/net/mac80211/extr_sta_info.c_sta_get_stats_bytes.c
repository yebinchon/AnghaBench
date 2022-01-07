
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_sta_rx_stats {int bytes; int syncp; } ;


 unsigned int u64_stats_fetch_begin (int *) ;
 scalar_t__ u64_stats_fetch_retry (int *,unsigned int) ;

__attribute__((used)) static inline u64 sta_get_stats_bytes(struct ieee80211_sta_rx_stats *rxstats)
{
 unsigned int start;
 u64 value;

 do {
  start = u64_stats_fetch_begin(&rxstats->syncp);
  value = rxstats->bytes;
 } while (u64_stats_fetch_retry(&rxstats->syncp, start));

 return value;
}
