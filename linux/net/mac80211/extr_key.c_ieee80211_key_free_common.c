
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int tfm; } ;
struct TYPE_10__ {int tfm; } ;
struct TYPE_9__ {int tfm; } ;
struct TYPE_8__ {int tfm; } ;
struct TYPE_12__ {TYPE_5__ gcmp; TYPE_4__ aes_gmac; TYPE_3__ aes_cmac; TYPE_2__ ccmp; } ;
struct TYPE_7__ {int cipher; } ;
struct ieee80211_key {TYPE_6__ u; TYPE_1__ conf; } ;
 int ieee80211_aes_cmac_key_free (int ) ;
 int ieee80211_aes_gcm_key_free (int ) ;
 int ieee80211_aes_gmac_key_free (int ) ;
 int ieee80211_aes_key_free (int ) ;
 int kzfree (struct ieee80211_key*) ;

__attribute__((used)) static void ieee80211_key_free_common(struct ieee80211_key *key)
{
 switch (key->conf.cipher) {
 case 131:
 case 130:
  ieee80211_aes_key_free(key->u.ccmp.tfm);
  break;
 case 135:
 case 134:
  ieee80211_aes_cmac_key_free(key->u.aes_cmac.tfm);
  break;
 case 133:
 case 132:
  ieee80211_aes_gmac_key_free(key->u.aes_gmac.tfm);
  break;
 case 129:
 case 128:
  ieee80211_aes_gcm_key_free(key->u.gcmp.tfm);
  break;
 }
 kzfree(key);
}
