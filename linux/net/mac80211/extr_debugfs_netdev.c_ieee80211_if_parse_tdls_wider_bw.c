
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_if_managed {int tdls_wider_bw_prohibited; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
typedef int ssize_t ;


 int kstrtou8 (char const*,int ,int *) ;

__attribute__((used)) static ssize_t ieee80211_if_parse_tdls_wider_bw(
 struct ieee80211_sub_if_data *sdata, const char *buf, int buflen)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 val;
 int ret;

 ret = kstrtou8(buf, 0, &val);
 if (ret)
  return ret;

 ifmgd->tdls_wider_bw_prohibited = !val;
 return buflen;
}
