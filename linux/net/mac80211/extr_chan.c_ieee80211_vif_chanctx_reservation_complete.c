
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int chswitch_work; } ;
struct TYPE_8__ {TYPE_3__ mgd; } ;
struct TYPE_5__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__* local; int csa_finalize_work; TYPE_1__ vif; } ;
struct TYPE_6__ {int hw; } ;
 int WARN_ON (int) ;
 int ieee80211_queue_work (int *,int *) ;

__attribute__((used)) static void
ieee80211_vif_chanctx_reservation_complete(struct ieee80211_sub_if_data *sdata)
{
 switch (sdata->vif.type) {
 case 141:
 case 140:
 case 138:
 case 135:
  ieee80211_queue_work(&sdata->local->hw,
         &sdata->csa_finalize_work);
  break;
 case 131:
  ieee80211_queue_work(&sdata->local->hw,
         &sdata->u.mgd.chswitch_work);
  break;
 case 130:
 case 139:
 case 129:
 case 137:
 case 134:
 case 132:
 case 133:
 case 136:
 case 128:
  WARN_ON(1);
  break;
 }
}
