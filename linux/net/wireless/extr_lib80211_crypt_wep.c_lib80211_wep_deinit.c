
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kzfree (void*) ;

__attribute__((used)) static void lib80211_wep_deinit(void *priv)
{
 kzfree(priv);
}
