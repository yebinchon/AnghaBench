
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_5__ {int dialog_token; int msr_elem; } ;
struct TYPE_6__ {TYPE_1__ measurement; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; int bssid; int sa; } ;


 int ieee80211_send_refuse_measurement_request (struct ieee80211_sub_if_data*,int *,int ,int ,int ) ;

void ieee80211_process_measurement_req(struct ieee80211_sub_if_data *sdata,
           struct ieee80211_mgmt *mgmt,
           size_t len)
{







 ieee80211_send_refuse_measurement_request(sdata,
   &mgmt->u.action.u.measurement.msr_elem,
   mgmt->sa, mgmt->bssid,
   mgmt->u.action.u.measurement.dialog_token);
}
