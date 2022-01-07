
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {TYPE_1__* mesh; } ;
struct TYPE_2__ {scalar_t__ plink_retries; scalar_t__ reason; scalar_t__ plid; scalar_t__ llid; int plink_state; int plink_lock; } ;


 int NL80211_PLINK_LISTEN ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void mesh_plink_fsm_restart(struct sta_info *sta)
{
 lockdep_assert_held(&sta->mesh->plink_lock);
 sta->mesh->plink_state = NL80211_PLINK_LISTEN;
 sta->mesh->llid = sta->mesh->plid = sta->mesh->reason = 0;
 sta->mesh->plink_retries = 0;
}
