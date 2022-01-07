
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_if_managed {int tdls_wider_bw_prohibited; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; TYPE_1__ u; } ;
typedef int ssize_t ;
struct TYPE_4__ {int hw; } ;


 int TDLS_WIDER_BW ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t ieee80211_if_fmt_tdls_wider_bw(
 const struct ieee80211_sub_if_data *sdata, char *buf, int buflen)
{
 const struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 bool tdls_wider_bw;

 tdls_wider_bw = ieee80211_hw_check(&sdata->local->hw, TDLS_WIDER_BW) &&
   !ifmgd->tdls_wider_bw_prohibited;

 return snprintf(buf, buflen, "%d\n", tdls_wider_bw);
}
