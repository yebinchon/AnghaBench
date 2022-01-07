
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfctrl_request_info {scalar_t__ cmd; scalar_t__ channel_id; int param; } ;


 scalar_t__ CFCTRL_CMD_LINK_SETUP ;
 int param_eq (int *,int *) ;

__attribute__((used)) static bool cfctrl_req_eq(const struct cfctrl_request_info *r1,
     const struct cfctrl_request_info *r2)
{
 if (r1->cmd != r2->cmd)
  return 0;
 if (r1->cmd == CFCTRL_CMD_LINK_SETUP)
  return param_eq(&r1->param, &r2->param);
 else
  return r1->channel_id == r2->channel_id;
}
