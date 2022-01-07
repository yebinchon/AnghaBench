
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_he_operation {int dummy; } ;
struct TYPE_2__ {struct ieee80211_he_operation he_operation; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;


 int memset (struct ieee80211_he_operation*,int ,int) ;

void
ieee80211_he_op_ie_to_bss_conf(struct ieee80211_vif *vif,
   const struct ieee80211_he_operation *he_op_ie_elem)
{
 struct ieee80211_he_operation *he_operation =
     &vif->bss_conf.he_operation;

 if (!he_op_ie_elem) {
  memset(he_operation, 0, sizeof(*he_operation));
  return;
 }

 vif->bss_conf.he_operation = *he_op_ie_elem;
}
