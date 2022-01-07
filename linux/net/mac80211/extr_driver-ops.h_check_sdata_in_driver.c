
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int flags; int name; TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int IEEE80211_SDATA_IN_DRIVER ;
 int WARN (int,char*,int ,int) ;

__attribute__((used)) static inline bool check_sdata_in_driver(struct ieee80211_sub_if_data *sdata)
{
 return !WARN(!(sdata->flags & IEEE80211_SDATA_IN_DRIVER),
       "%s:  Failed check-sdata-in-driver check, flags: 0x%x\n",
       sdata->dev ? sdata->dev->name : sdata->name, sdata->flags);
}
