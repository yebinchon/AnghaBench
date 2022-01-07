
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct ovs_flow_stats {int dummy; } ;
struct nlattr {int dummy; } ;
struct dp_meter_band {int stats; } ;
struct dp_meter {scalar_t__ n_bands; struct dp_meter_band* bands; int used; int stats; } ;


 int EMSGSIZE ;
 int OVS_BAND_ATTR_STATS ;
 int OVS_BAND_ATTR_UNSPEC ;
 int OVS_METER_ATTR_BANDS ;
 int OVS_METER_ATTR_ID ;
 int OVS_METER_ATTR_PAD ;
 int OVS_METER_ATTR_STATS ;
 int OVS_METER_ATTR_USED ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int ovs_meter_cmd_reply_stats(struct sk_buff *reply, u32 meter_id,
         struct dp_meter *meter)
{
 struct nlattr *nla;
 struct dp_meter_band *band;
 u16 i;

 if (nla_put_u32(reply, OVS_METER_ATTR_ID, meter_id))
  goto error;

 if (!meter)
  return 0;

 if (nla_put(reply, OVS_METER_ATTR_STATS,
      sizeof(struct ovs_flow_stats), &meter->stats) ||
     nla_put_u64_64bit(reply, OVS_METER_ATTR_USED, meter->used,
         OVS_METER_ATTR_PAD))
  goto error;

 nla = nla_nest_start_noflag(reply, OVS_METER_ATTR_BANDS);
 if (!nla)
  goto error;

 band = meter->bands;

 for (i = 0; i < meter->n_bands; ++i, ++band) {
  struct nlattr *band_nla;

  band_nla = nla_nest_start_noflag(reply, OVS_BAND_ATTR_UNSPEC);
  if (!band_nla || nla_put(reply, OVS_BAND_ATTR_STATS,
      sizeof(struct ovs_flow_stats),
      &band->stats))
   goto error;
  nla_nest_end(reply, band_nla);
 }
 nla_nest_end(reply, nla);

 return 0;
error:
 return -EMSGSIZE;
}
