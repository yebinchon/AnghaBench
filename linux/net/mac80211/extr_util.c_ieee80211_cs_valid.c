
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_cipher_scheme {scalar_t__ cipher; scalar_t__ hdr_len; scalar_t__ pn_len; scalar_t__ pn_off; scalar_t__ key_idx_off; int key_idx_shift; scalar_t__ key_idx_mask; } ;



bool ieee80211_cs_valid(const struct ieee80211_cipher_scheme *cs)
{
 return !(cs == ((void*)0) || cs->cipher == 0 ||
   cs->hdr_len < cs->pn_len + cs->pn_off ||
   cs->hdr_len <= cs->key_idx_off ||
   cs->key_idx_shift > 7 ||
   cs->key_idx_mask == 0);
}
