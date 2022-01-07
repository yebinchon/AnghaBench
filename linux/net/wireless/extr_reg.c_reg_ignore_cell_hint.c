
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int dummy; } ;
typedef enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;


 int REG_REQ_IGNORE ;

__attribute__((used)) static enum reg_request_treatment
reg_ignore_cell_hint(struct regulatory_request *pending_request)
{
 return REG_REQ_IGNORE;
}
