
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int * data; } ;
struct ieee80211_vendor_radiotap {int align; scalar_t__ pad; scalar_t__ len; } ;
struct ieee80211_rx_status {int flag; scalar_t__ encoding; scalar_t__ chains; } ;
struct ieee80211_radiotap_lsig {int dummy; } ;
struct ieee80211_radiotap_header {int dummy; } ;
struct ieee80211_radiotap_he_mu {int dummy; } ;
struct ieee80211_radiotap_he {int dummy; } ;
struct TYPE_3__ {scalar_t__ units_pos; } ;
struct TYPE_4__ {TYPE_1__ radiotap_timestamp; } ;
struct ieee80211_local {TYPE_2__ hw; } ;


 int ALIGN (int,int) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ RX_ENC_HE ;
 scalar_t__ RX_ENC_HT ;
 scalar_t__ RX_ENC_VHT ;
 int RX_FLAG_AMPDU_DETAILS ;
 int RX_FLAG_NO_PSDU ;
 int RX_FLAG_RADIOTAP_HE ;
 int RX_FLAG_RADIOTAP_HE_MU ;
 int RX_FLAG_RADIOTAP_LSIG ;
 int RX_FLAG_RADIOTAP_VENDOR_DATA ;
 int SIGNAL_DBM ;
 scalar_t__ WARN_ON (int) ;
 int hweight8 (scalar_t__) ;
 scalar_t__ ieee80211_have_rx_timestamp (struct ieee80211_rx_status*) ;
 scalar_t__ ieee80211_hw_check (TYPE_2__*,int ) ;

__attribute__((used)) static int
ieee80211_rx_radiotap_hdrlen(struct ieee80211_local *local,
        struct ieee80211_rx_status *status,
        struct sk_buff *skb)
{
 int len;


 len = sizeof(struct ieee80211_radiotap_header) + 8;


 if (status->chains)
  len += 4 * hweight8(status->chains);

 if (status->flag & RX_FLAG_RADIOTAP_VENDOR_DATA)
  len += 4;

 if (ieee80211_have_rx_timestamp(status)) {
  len = ALIGN(len, 8);
  len += 8;
 }
 if (ieee80211_hw_check(&local->hw, SIGNAL_DBM))
  len += 1;


 if (!status->chains)
  len += 1;


 len = ALIGN(len, 2);

 if (status->encoding == RX_ENC_HT)
  len += 3;

 if (status->flag & RX_FLAG_AMPDU_DETAILS) {
  len = ALIGN(len, 4);
  len += 8;
 }

 if (status->encoding == RX_ENC_VHT) {
  len = ALIGN(len, 2);
  len += 12;
 }

 if (local->hw.radiotap_timestamp.units_pos >= 0) {
  len = ALIGN(len, 8);
  len += 12;
 }

 if (status->encoding == RX_ENC_HE &&
     status->flag & RX_FLAG_RADIOTAP_HE) {
  len = ALIGN(len, 2);
  len += 12;
  BUILD_BUG_ON(sizeof(struct ieee80211_radiotap_he) != 12);
 }

 if (status->encoding == RX_ENC_HE &&
     status->flag & RX_FLAG_RADIOTAP_HE_MU) {
  len = ALIGN(len, 2);
  len += 12;
  BUILD_BUG_ON(sizeof(struct ieee80211_radiotap_he_mu) != 12);
 }

 if (status->flag & RX_FLAG_NO_PSDU)
  len += 1;

 if (status->flag & RX_FLAG_RADIOTAP_LSIG) {
  len = ALIGN(len, 2);
  len += 4;
  BUILD_BUG_ON(sizeof(struct ieee80211_radiotap_lsig) != 4);
 }

 if (status->chains) {

  len += 2 * hweight8(status->chains);
 }

 if (status->flag & RX_FLAG_RADIOTAP_VENDOR_DATA) {
  struct ieee80211_vendor_radiotap *rtap;
  int vendor_data_offset = 0;





  if (status->flag & RX_FLAG_RADIOTAP_HE)
   vendor_data_offset +=
    sizeof(struct ieee80211_radiotap_he);
  if (status->flag & RX_FLAG_RADIOTAP_HE_MU)
   vendor_data_offset +=
    sizeof(struct ieee80211_radiotap_he_mu);
  if (status->flag & RX_FLAG_RADIOTAP_LSIG)
   vendor_data_offset +=
    sizeof(struct ieee80211_radiotap_lsig);

  rtap = (void *)&skb->data[vendor_data_offset];


  len = ALIGN(len, 2);

  len += 6;
  if (WARN_ON(rtap->align == 0))
   rtap->align = 1;
  len = ALIGN(len, rtap->align);
  len += rtap->len + rtap->pad;
 }

 return len;
}
