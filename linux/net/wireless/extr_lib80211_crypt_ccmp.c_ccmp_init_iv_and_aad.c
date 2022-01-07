
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int const* addr4; int const* addr2; int const* addr1; int seq_ctrl; int frame_control; } ;


 int CCMP_PN_LEN ;
 int ETH_ALEN ;
 int ieee80211_has_a4 (int ) ;
 int ieee80211_is_data_qos (int ) ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int ccmp_init_iv_and_aad(const struct ieee80211_hdr *hdr,
    const u8 *pn, u8 *iv, u8 *aad)
{
 u8 *pos, qc = 0;
 size_t aad_len;
 int a4_included, qc_included;

 a4_included = ieee80211_has_a4(hdr->frame_control);
 qc_included = ieee80211_is_data_qos(hdr->frame_control);

 aad_len = 22;
 if (a4_included)
  aad_len += 6;
 if (qc_included) {
  pos = (u8 *) & hdr->addr4;
  if (a4_included)
   pos += 6;
  qc = *pos & 0x0f;
  aad_len += 2;
 }
 iv[0] = 0x1;


 iv[1] = qc;
 memcpy(iv + 2, hdr->addr2, ETH_ALEN);
 memcpy(iv + 8, pn, CCMP_PN_LEN);
 pos = (u8 *) hdr;
 aad[0] = pos[0] & 0x8f;
 aad[1] = pos[1] & 0xc7;
 memcpy(aad + 2, hdr->addr1, 3 * ETH_ALEN);
 pos = (u8 *) & hdr->seq_ctrl;
 aad[20] = pos[0] & 0x0f;
 aad[21] = 0;
 memset(aad + 22, 0, 8);
 if (a4_included)
  memcpy(aad + 22, hdr->addr4, ETH_ALEN);
 if (qc_included) {
  aad[a4_included ? 28 : 22] = qc;

 }
 return aad_len;
}
