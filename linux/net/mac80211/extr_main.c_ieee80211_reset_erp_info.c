
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int use_cts_prot; int use_short_preamble; int use_short_slot; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;


 int BSS_CHANGED_ERP_CTS_PROT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;

u32 ieee80211_reset_erp_info(struct ieee80211_sub_if_data *sdata)
{
 sdata->vif.bss_conf.use_cts_prot = 0;
 sdata->vif.bss_conf.use_short_preamble = 0;
 sdata->vif.bss_conf.use_short_slot = 0;
 return BSS_CHANGED_ERP_CTS_PROT |
        BSS_CHANGED_ERP_PREAMBLE |
        BSS_CHANGED_ERP_SLOT;
}
