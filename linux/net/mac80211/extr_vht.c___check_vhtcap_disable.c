
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int vht_cap_info; } ;
struct TYPE_5__ {int vht_cap_info; } ;
struct TYPE_7__ {TYPE_2__ vht_capa; TYPE_1__ vht_capa_mask; } ;
struct TYPE_8__ {TYPE_3__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; } ;
struct ieee80211_sta_vht_cap {int cap; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static void __check_vhtcap_disable(struct ieee80211_sub_if_data *sdata,
       struct ieee80211_sta_vht_cap *vht_cap,
       u32 flag)
{
 __le32 le_flag = cpu_to_le32(flag);

 if (sdata->u.mgd.vht_capa_mask.vht_cap_info & le_flag &&
     !(sdata->u.mgd.vht_capa.vht_cap_info & le_flag))
  vht_cap->cap &= ~flag;
}
