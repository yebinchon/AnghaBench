
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int chandef; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;


 int WLAN_EID_SUPPORTED_REGULATORY_CLASSES ;
 int ieee80211_chandef_to_operating_class (int *,void**) ;
 void** skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_tdls_add_oper_classes(struct ieee80211_sub_if_data *sdata,
         struct sk_buff *skb)
{
 u8 *pos;
 u8 op_class;

 if (!ieee80211_chandef_to_operating_class(&sdata->vif.bss_conf.chandef,
        &op_class))
  return;

 pos = skb_put(skb, 4);
 *pos++ = WLAN_EID_SUPPORTED_REGULATORY_CLASSES;
 *pos++ = 2;

 *pos++ = op_class;
 *pos++ = op_class;
}
