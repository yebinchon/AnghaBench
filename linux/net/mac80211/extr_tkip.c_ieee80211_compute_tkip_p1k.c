
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tkip_ctx {scalar_t__ state; int p1k_iv32; } ;
struct TYPE_6__ {int addr; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct TYPE_7__ {int txlock; struct tkip_ctx tx; } ;
struct TYPE_8__ {TYPE_3__ tkip; } ;
struct TYPE_5__ {int * key; } ;
struct ieee80211_key {TYPE_4__ u; TYPE_1__ conf; struct ieee80211_sub_if_data* sdata; } ;


 size_t NL80211_TKIP_DATA_OFFSET_ENCR_KEY ;
 scalar_t__ TKIP_STATE_NOT_INIT ;
 int lockdep_assert_held (int *) ;
 int tkip_mixing_phase1 (int const*,struct tkip_ctx*,int ,int ) ;

__attribute__((used)) static void ieee80211_compute_tkip_p1k(struct ieee80211_key *key, u32 iv32)
{
 struct ieee80211_sub_if_data *sdata = key->sdata;
 struct tkip_ctx *ctx = &key->u.tkip.tx;
 const u8 *tk = &key->conf.key[NL80211_TKIP_DATA_OFFSET_ENCR_KEY];

 lockdep_assert_held(&key->u.tkip.txlock);
 if (ctx->p1k_iv32 != iv32 || ctx->state == TKIP_STATE_NOT_INIT)
  tkip_mixing_phase1(tk, ctx, sdata->vif.addr, iv32);
}
