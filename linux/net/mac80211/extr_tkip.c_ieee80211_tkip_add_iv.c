
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ieee80211_key_conf {int keyidx; } ;


 int TKIP_PN_TO_IV16 (int ) ;
 int TKIP_PN_TO_IV32 (int ) ;
 int put_unaligned_le32 (int ,int *) ;
 int * write_tkip_iv (int *,int ) ;

u8 *ieee80211_tkip_add_iv(u8 *pos, struct ieee80211_key_conf *keyconf, u64 pn)
{
 pos = write_tkip_iv(pos, TKIP_PN_TO_IV16(pn));
 *pos++ = (keyconf->keyidx << 6) | (1 << 5) ;
 put_unaligned_le32(TKIP_PN_TO_IV32(pn), pos);
 return pos + 4;
}
