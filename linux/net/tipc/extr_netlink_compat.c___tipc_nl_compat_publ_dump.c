
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_nl_compat_msg {int rep; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t TIPC_NLA_PUBL ;
 size_t TIPC_NLA_PUBL_LOWER ;
 int TIPC_NLA_PUBL_MAX ;
 size_t TIPC_NLA_PUBL_TYPE ;
 size_t TIPC_NLA_PUBL_UPPER ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;
 int tipc_tlv_sprintf (int ,char*,scalar_t__,scalar_t__,...) ;

__attribute__((used)) static int __tipc_nl_compat_publ_dump(struct tipc_nl_compat_msg *msg,
          struct nlattr **attrs)
{
 u32 type, lower, upper;
 struct nlattr *publ[TIPC_NLA_PUBL_MAX + 1];
 int err;

 if (!attrs[TIPC_NLA_PUBL])
  return -EINVAL;

 err = nla_parse_nested_deprecated(publ, TIPC_NLA_PUBL_MAX,
       attrs[TIPC_NLA_PUBL], ((void*)0), ((void*)0));
 if (err)
  return err;

 type = nla_get_u32(publ[TIPC_NLA_PUBL_TYPE]);
 lower = nla_get_u32(publ[TIPC_NLA_PUBL_LOWER]);
 upper = nla_get_u32(publ[TIPC_NLA_PUBL_UPPER]);

 if (lower == upper)
  tipc_tlv_sprintf(msg->rep, " {%u,%u}", type, lower);
 else
  tipc_tlv_sprintf(msg->rep, " {%u,%u,%u}", type, lower, upper);

 return 0;
}
