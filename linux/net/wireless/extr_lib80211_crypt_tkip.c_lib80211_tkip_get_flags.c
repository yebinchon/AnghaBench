
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lib80211_tkip_data {unsigned long flags; } ;



__attribute__((used)) static unsigned long lib80211_tkip_get_flags(void *priv)
{
 struct lib80211_tkip_data *_priv = priv;
 return _priv->flags;
}
