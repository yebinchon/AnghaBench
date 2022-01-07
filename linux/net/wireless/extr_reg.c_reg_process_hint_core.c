
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int intersect; int processed; } ;
typedef enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;


 int REG_REQ_IGNORE ;
 int REG_REQ_OK ;
 scalar_t__ reg_query_database (struct regulatory_request*) ;
 int reg_update_last_request (struct regulatory_request*) ;

__attribute__((used)) static enum reg_request_treatment
reg_process_hint_core(struct regulatory_request *core_request)
{
 if (reg_query_database(core_request)) {
  core_request->intersect = 0;
  core_request->processed = 0;
  reg_update_last_request(core_request);
  return REG_REQ_OK;
 }

 return REG_REQ_IGNORE;
}
