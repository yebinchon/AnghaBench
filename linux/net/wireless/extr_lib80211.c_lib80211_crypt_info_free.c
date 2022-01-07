
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lib80211_crypt_info {struct lib80211_crypt_data** crypt; int crypt_deinit_timer; } ;
struct lib80211_crypt_data {TYPE_1__* ops; int priv; } ;
struct TYPE_2__ {int owner; int (* deinit ) (int ) ;} ;


 int NUM_WEP_KEYS ;
 int del_timer_sync (int *) ;
 int kfree (struct lib80211_crypt_data*) ;
 int lib80211_crypt_deinit_entries (struct lib80211_crypt_info*,int) ;
 int lib80211_crypt_quiescing (struct lib80211_crypt_info*) ;
 int module_put (int ) ;
 int stub1 (int ) ;

void lib80211_crypt_info_free(struct lib80211_crypt_info *info)
{
 int i;

        lib80211_crypt_quiescing(info);
        del_timer_sync(&info->crypt_deinit_timer);
        lib80211_crypt_deinit_entries(info, 1);

        for (i = 0; i < NUM_WEP_KEYS; i++) {
                struct lib80211_crypt_data *crypt = info->crypt[i];
                if (crypt) {
                        if (crypt->ops) {
                                crypt->ops->deinit(crypt->priv);
                                module_put(crypt->ops->owner);
                        }
                        kfree(crypt);
                        info->crypt[i] = ((void*)0);
                }
        }
}
