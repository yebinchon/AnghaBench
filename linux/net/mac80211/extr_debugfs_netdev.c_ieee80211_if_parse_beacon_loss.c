
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int assoc; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
typedef int ssize_t ;


 int ENOTCONN ;
 int ieee80211_beacon_loss (TYPE_2__*) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static ssize_t ieee80211_if_parse_beacon_loss(
 struct ieee80211_sub_if_data *sdata, const char *buf, int buflen)
{
 if (!ieee80211_sdata_running(sdata) || !sdata->vif.bss_conf.assoc)
  return -ENOTCONN;

 ieee80211_beacon_loss(&sdata->vif);

 return buflen;
}
