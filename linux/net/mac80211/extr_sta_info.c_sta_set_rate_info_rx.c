
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sta_info {int local; } ;
struct rate_info {int dummy; } ;
struct TYPE_2__ {int last_rate; } ;


 int EINVAL ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ STA_STATS_RATE_INVALID ;
 TYPE_1__* sta_get_last_rx_stats (struct sta_info*) ;
 int sta_stats_decode_rate (int ,scalar_t__,struct rate_info*) ;

__attribute__((used)) static int sta_set_rate_info_rx(struct sta_info *sta, struct rate_info *rinfo)
{
 u16 rate = READ_ONCE(sta_get_last_rx_stats(sta)->last_rate);

 if (rate == STA_STATS_RATE_INVALID)
  return -EINVAL;

 sta_stats_decode_rate(sta->local, rate, rinfo);
 return 0;
}
