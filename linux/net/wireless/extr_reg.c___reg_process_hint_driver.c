
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {scalar_t__ initiator; int alpha2; } ;
typedef enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;


 scalar_t__ NL80211_REGDOM_SET_BY_CORE ;
 scalar_t__ NL80211_REGDOM_SET_BY_DRIVER ;
 int REG_REQ_ALREADY_SET ;
 int REG_REQ_INTERSECT ;
 int REG_REQ_OK ;
 struct regulatory_request* get_last_request () ;
 scalar_t__ regdom_changes (int ) ;

__attribute__((used)) static enum reg_request_treatment
__reg_process_hint_driver(struct regulatory_request *driver_request)
{
 struct regulatory_request *lr = get_last_request();

 if (lr->initiator == NL80211_REGDOM_SET_BY_CORE) {
  if (regdom_changes(driver_request->alpha2))
   return REG_REQ_OK;
  return REG_REQ_ALREADY_SET;
 }






 if (lr->initiator == NL80211_REGDOM_SET_BY_DRIVER &&
     !regdom_changes(driver_request->alpha2))
  return REG_REQ_ALREADY_SET;

 return REG_REQ_INTERSECT;
}
