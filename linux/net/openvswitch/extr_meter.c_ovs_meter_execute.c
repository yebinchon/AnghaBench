
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_4__ {int n_packets; int n_bytes; } ;
struct dp_meter_band {long long burst_size; long long rate; int bucket; scalar_t__ type; TYPE_2__ stats; } ;
struct TYPE_3__ {int n_packets; int n_bytes; } ;
struct dp_meter {long long used; int max_delta_t; int n_bands; int lock; struct dp_meter_band* bands; scalar_t__ kbps; TYPE_1__ stats; } ;
struct datapath {int dummy; } ;


 scalar_t__ OVS_METER_BAND_TYPE_DROP ;
 long long div_u64 (int ,int) ;
 int ktime_get_ns () ;
 struct dp_meter* lookup_meter (struct datapath*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool ovs_meter_execute(struct datapath *dp, struct sk_buff *skb,
         struct sw_flow_key *key, u32 meter_id)
{
 struct dp_meter *meter;
 struct dp_meter_band *band;
 long long int now_ms = div_u64(ktime_get_ns(), 1000 * 1000);
 long long int long_delta_ms;
 u32 delta_ms;
 u32 cost;
 int i, band_exceeded_max = -1;
 u32 band_exceeded_rate = 0;

 meter = lookup_meter(dp, meter_id);

 if (!meter)
  return 0;


 spin_lock(&meter->lock);

 long_delta_ms = (now_ms - meter->used);




 delta_ms = (long_delta_ms > (long long int)meter->max_delta_t)
     ? meter->max_delta_t : (u32)long_delta_ms;



 meter->used = now_ms;
 meter->stats.n_packets += 1;
 meter->stats.n_bytes += skb->len;
 cost = (meter->kbps) ? skb->len * 8 : 1000;


 for (i = 0; i < meter->n_bands; ++i) {
  long long int max_bucket_size;

  band = &meter->bands[i];
  max_bucket_size = (band->burst_size + band->rate) * 1000LL;

  band->bucket += delta_ms * band->rate;
  if (band->bucket > max_bucket_size)
   band->bucket = max_bucket_size;

  if (band->bucket >= cost) {
   band->bucket -= cost;
  } else if (band->rate > band_exceeded_rate) {
   band_exceeded_rate = band->rate;
   band_exceeded_max = i;
  }
 }

 if (band_exceeded_max >= 0) {

  band = &meter->bands[band_exceeded_max];
  band->stats.n_packets += 1;
  band->stats.n_bytes += skb->len;


  if (band->type == OVS_METER_BAND_TYPE_DROP) {
   spin_unlock(&meter->lock);
   return 1;
  }
 }

 spin_unlock(&meter->lock);
 return 0;
}
