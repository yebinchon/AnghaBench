
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tkip_ctx {int p1k; } ;
struct ieee80211_key_conf {int * key; } ;


 size_t NL80211_TKIP_DATA_OFFSET_ENCR_KEY ;
 int memcpy (int *,int ,int) ;
 int tkip_mixing_phase1 (int const*,struct tkip_ctx*,int const*,int ) ;

void ieee80211_get_tkip_rx_p1k(struct ieee80211_key_conf *keyconf,
          const u8 *ta, u32 iv32, u16 *p1k)
{
 const u8 *tk = &keyconf->key[NL80211_TKIP_DATA_OFFSET_ENCR_KEY];
 struct tkip_ctx ctx;

 tkip_mixing_phase1(tk, &ctx, ta, iv32);
 memcpy(p1k, ctx.p1k, sizeof(ctx.p1k));
}
