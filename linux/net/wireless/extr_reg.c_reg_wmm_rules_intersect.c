
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_wmm_ac {void* aifsn; int cot; void* cw_max; void* cw_min; } ;


 void* max_t (int ,void*,void*) ;
 int min_t (int ,int ,int ) ;
 int u16 ;
 int u8 ;

__attribute__((used)) static void reg_wmm_rules_intersect(const struct ieee80211_wmm_ac *wmm_ac1,
        const struct ieee80211_wmm_ac *wmm_ac2,
        struct ieee80211_wmm_ac *intersect)
{
 intersect->cw_min = max_t(u16, wmm_ac1->cw_min, wmm_ac2->cw_min);
 intersect->cw_max = max_t(u16, wmm_ac1->cw_max, wmm_ac2->cw_max);
 intersect->cot = min_t(u16, wmm_ac1->cot, wmm_ac2->cot);
 intersect->aifsn = max_t(u8, wmm_ac1->aifsn, wmm_ac2->aifsn);
}
