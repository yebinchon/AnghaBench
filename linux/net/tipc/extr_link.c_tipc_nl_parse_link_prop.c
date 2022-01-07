
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 scalar_t__ TIPC_MAX_LINK_PRI ;
 scalar_t__ TIPC_MAX_LINK_TOL ;
 scalar_t__ TIPC_MAX_LINK_WIN ;
 scalar_t__ TIPC_MIN_LINK_TOL ;
 scalar_t__ TIPC_MIN_LINK_WIN ;
 int TIPC_NLA_PROP_MAX ;
 size_t TIPC_NLA_PROP_PRIO ;
 size_t TIPC_NLA_PROP_TOL ;
 size_t TIPC_NLA_PROP_WIN ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int tipc_nl_prop_policy ;

int tipc_nl_parse_link_prop(struct nlattr *prop, struct nlattr *props[])
{
 int err;

 err = nla_parse_nested_deprecated(props, TIPC_NLA_PROP_MAX, prop,
       tipc_nl_prop_policy, ((void*)0));
 if (err)
  return err;

 if (props[TIPC_NLA_PROP_PRIO]) {
  u32 prio;

  prio = nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
  if (prio > TIPC_MAX_LINK_PRI)
   return -EINVAL;
 }

 if (props[TIPC_NLA_PROP_TOL]) {
  u32 tol;

  tol = nla_get_u32(props[TIPC_NLA_PROP_TOL]);
  if ((tol < TIPC_MIN_LINK_TOL) || (tol > TIPC_MAX_LINK_TOL))
   return -EINVAL;
 }

 if (props[TIPC_NLA_PROP_WIN]) {
  u32 win;

  win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
  if ((win < TIPC_MIN_LINK_WIN) || (win > TIPC_MAX_LINK_WIN))
   return -EINVAL;
 }

 return 0;
}
