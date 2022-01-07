
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nl_compat_msg {int rep; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t TIPC_NLA_BEARER ;
 int TIPC_NLA_BEARER_MAX ;
 size_t TIPC_NLA_BEARER_NAME ;
 int TIPC_TLV_BEARER_NAME ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;
 int tipc_add_tlv (int ,int ,int ,int ) ;

__attribute__((used)) static int tipc_nl_compat_bearer_dump(struct tipc_nl_compat_msg *msg,
          struct nlattr **attrs)
{
 struct nlattr *bearer[TIPC_NLA_BEARER_MAX + 1];
 int err;

 if (!attrs[TIPC_NLA_BEARER])
  return -EINVAL;

 err = nla_parse_nested_deprecated(bearer, TIPC_NLA_BEARER_MAX,
       attrs[TIPC_NLA_BEARER], ((void*)0), ((void*)0));
 if (err)
  return err;

 return tipc_add_tlv(msg->rep, TIPC_TLV_BEARER_NAME,
       nla_data(bearer[TIPC_NLA_BEARER_NAME]),
       nla_len(bearer[TIPC_NLA_BEARER_NAME]));
}
