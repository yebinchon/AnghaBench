
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lib80211_tkip_data {int rx_tfm_michael; int tx_tfm_michael; } ;


 int crypto_free_shash (int ) ;
 int kzfree (void*) ;

__attribute__((used)) static void lib80211_tkip_deinit(void *priv)
{
 struct lib80211_tkip_data *_priv = priv;
 if (_priv) {
  crypto_free_shash(_priv->tx_tfm_michael);
  crypto_free_shash(_priv->rx_tfm_michael);
 }
 kzfree(priv);
}
