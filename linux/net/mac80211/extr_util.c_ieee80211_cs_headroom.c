
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int dummy; } ;
struct ieee80211_cipher_scheme {int hdr_len; } ;
struct cfg80211_crypto_settings {int n_ciphers_pairwise; int cipher_group; int * ciphers_pairwise; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int IEEE80211_ENCRYPT_HEADROOM ;
 struct ieee80211_cipher_scheme* ieee80211_cs_get (struct ieee80211_local*,int ,int) ;

int ieee80211_cs_headroom(struct ieee80211_local *local,
     struct cfg80211_crypto_settings *crypto,
     enum nl80211_iftype iftype)
{
 const struct ieee80211_cipher_scheme *cs;
 int headroom = IEEE80211_ENCRYPT_HEADROOM;
 int i;

 for (i = 0; i < crypto->n_ciphers_pairwise; i++) {
  cs = ieee80211_cs_get(local, crypto->ciphers_pairwise[i],
          iftype);

  if (cs && headroom < cs->hdr_len)
   headroom = cs->hdr_len;
 }

 cs = ieee80211_cs_get(local, crypto->cipher_group, iftype);
 if (cs && headroom < cs->hdr_len)
  headroom = cs->hdr_len;

 return headroom;
}
