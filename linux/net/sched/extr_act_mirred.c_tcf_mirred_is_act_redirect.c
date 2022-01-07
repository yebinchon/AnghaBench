
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCA_EGRESS_REDIR ;
 int TCA_INGRESS_REDIR ;

__attribute__((used)) static bool tcf_mirred_is_act_redirect(int action)
{
 return action == TCA_EGRESS_REDIR || action == TCA_INGRESS_REDIR;
}
