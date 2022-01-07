
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_if_managed {int uapsd_max_sp_len; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
typedef int ssize_t ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t ieee80211_if_fmt_uapsd_max_sp_len(
 const struct ieee80211_sub_if_data *sdata, char *buf, int buflen)
{
 const struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

 return snprintf(buf, buflen, "0x%x\n", ifmgd->uapsd_max_sp_len);
}
