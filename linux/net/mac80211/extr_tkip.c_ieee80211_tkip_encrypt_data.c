
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_key {int conf; } ;
struct arc4_ctx {int dummy; } ;


 int ieee80211_get_tkip_p2k (int *,struct sk_buff*,int *) ;
 int ieee80211_wep_encrypt_data (struct arc4_ctx*,int *,int,int *,size_t) ;

int ieee80211_tkip_encrypt_data(struct arc4_ctx *ctx,
    struct ieee80211_key *key,
    struct sk_buff *skb,
    u8 *payload, size_t payload_len)
{
 u8 rc4key[16];

 ieee80211_get_tkip_p2k(&key->conf, skb, rc4key);

 return ieee80211_wep_encrypt_data(ctx, rc4key, 16,
       payload, payload_len);
}
