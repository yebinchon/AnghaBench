
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_regdb_apply_request {int list; struct ieee80211_regdomain const* regdom; } ;
struct ieee80211_regdomain {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct ieee80211_regdomain const*) ;
 struct reg_regdb_apply_request* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_regdb_apply_list ;
 int reg_regdb_apply_mutex ;
 int reg_regdb_work ;
 int schedule_work (int *) ;

__attribute__((used)) static int reg_schedule_apply(const struct ieee80211_regdomain *regdom)
{
 struct reg_regdb_apply_request *request;

 request = kzalloc(sizeof(struct reg_regdb_apply_request), GFP_KERNEL);
 if (!request) {
  kfree(regdom);
  return -ENOMEM;
 }

 request->regdom = regdom;

 mutex_lock(&reg_regdb_apply_mutex);
 list_add_tail(&request->list, &reg_regdb_apply_list);
 mutex_unlock(&reg_regdb_apply_mutex);

 schedule_work(&reg_regdb_work);
 return 0;
}
