
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pcpu_sw_netstats {int syncp; int tx_bytes; int tx_packets; } ;
struct net_device {int tstats; } ;


 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static inline void ieee80211_tx_stats(struct net_device *dev, u32 len)
{
 struct pcpu_sw_netstats *tstats = this_cpu_ptr(dev->tstats);

 u64_stats_update_begin(&tstats->syncp);
 tstats->tx_packets++;
 tstats->tx_bytes += len;
 u64_stats_update_end(&tstats->syncp);
}
