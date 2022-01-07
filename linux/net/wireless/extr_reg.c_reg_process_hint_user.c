
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int intersect; int processed; int * alpha2; } ;
typedef enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;


 int REG_REQ_ALREADY_SET ;
 int REG_REQ_IGNORE ;
 int REG_REQ_INTERSECT ;
 int REG_REQ_OK ;
 int __reg_process_hint_user (struct regulatory_request*) ;
 scalar_t__ reg_query_database (struct regulatory_request*) ;
 int reg_update_last_request (struct regulatory_request*) ;
 int * user_alpha2 ;

__attribute__((used)) static enum reg_request_treatment
reg_process_hint_user(struct regulatory_request *user_request)
{
 enum reg_request_treatment treatment;

 treatment = __reg_process_hint_user(user_request);
 if (treatment == REG_REQ_IGNORE ||
     treatment == REG_REQ_ALREADY_SET)
  return REG_REQ_IGNORE;

 user_request->intersect = treatment == REG_REQ_INTERSECT;
 user_request->processed = 0;

 if (reg_query_database(user_request)) {
  reg_update_last_request(user_request);
  user_alpha2[0] = user_request->alpha2[0];
  user_alpha2[1] = user_request->alpha2[1];
  return REG_REQ_OK;
 }

 return REG_REQ_IGNORE;
}
