
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_sub_if_data {int state; } ;


 int SDATA_STATE_RUNNING ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool
ieee802154_sdata_running(struct ieee802154_sub_if_data *sdata)
{
 return test_bit(SDATA_STATE_RUNNING, &sdata->state);
}
