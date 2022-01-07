
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct michael_mic_ctx {int l; int r; } ;
struct ieee80211_hdr {int frame_control; } ;


 int get_unaligned_le16 (int*) ;
 int get_unaligned_le32 (int const*) ;
 int* ieee80211_get_DA (struct ieee80211_hdr*) ;
 int* ieee80211_get_SA (struct ieee80211_hdr*) ;
 int ieee80211_get_tid (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int michael_block (struct michael_mic_ctx*,int) ;

__attribute__((used)) static void michael_mic_hdr(struct michael_mic_ctx *mctx, const u8 *key,
       struct ieee80211_hdr *hdr)
{
 u8 *da, *sa, tid;

 da = ieee80211_get_DA(hdr);
 sa = ieee80211_get_SA(hdr);
 if (ieee80211_is_data_qos(hdr->frame_control))
  tid = ieee80211_get_tid(hdr);
 else
  tid = 0;

 mctx->l = get_unaligned_le32(key);
 mctx->r = get_unaligned_le32(key + 4);





 michael_block(mctx, get_unaligned_le32(da));
 michael_block(mctx, get_unaligned_le16(&da[4]) |
       (get_unaligned_le16(sa) << 16));
 michael_block(mctx, get_unaligned_le32(&sa[2]));
 michael_block(mctx, tid);
}
