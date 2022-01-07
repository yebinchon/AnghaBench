
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct regulatory_request {int intersect; int processed; } ;
typedef enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;






 int WARN_ONCE (int,char*) ;
 int __reg_process_hint_country_ie (struct wiphy*,struct regulatory_request*) ;
 int reg_free_request (struct regulatory_request*) ;
 scalar_t__ reg_query_database (struct regulatory_request*) ;
 int reg_update_last_request (struct regulatory_request*) ;

__attribute__((used)) static enum reg_request_treatment
reg_process_hint_country_ie(struct wiphy *wiphy,
       struct regulatory_request *country_ie_request)
{
 enum reg_request_treatment treatment;

 treatment = __reg_process_hint_country_ie(wiphy, country_ie_request);

 switch (treatment) {
 case 128:
  break;
 case 130:
  return 130;
 case 131:
  reg_free_request(country_ie_request);
  return 131;
 case 129:




  WARN_ONCE(1, "Unexpected intersection for country elements");
  return 130;
 }

 country_ie_request->intersect = 0;
 country_ie_request->processed = 0;

 if (reg_query_database(country_ie_request)) {
  reg_update_last_request(country_ie_request);
  return 128;
 }

 return 130;
}
