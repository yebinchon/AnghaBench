
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct beacon_data {int csa_current_counter; } ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static u8 __ieee80211_csa_update_counter(struct beacon_data *beacon)
{
 beacon->csa_current_counter--;


 WARN_ON_ONCE(!beacon->csa_current_counter);

 return beacon->csa_current_counter;
}
