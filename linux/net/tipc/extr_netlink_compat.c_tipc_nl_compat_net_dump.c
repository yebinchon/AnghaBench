
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nl_compat_msg {int rep; } ;
struct nlattr {int dummy; } ;
typedef int id ;
typedef int __be32 ;


 int EINVAL ;
 size_t TIPC_NLA_NET ;
 size_t TIPC_NLA_NET_ID ;
 int TIPC_NLA_NET_MAX ;
 int TIPC_TLV_UNSIGNED ;
 int htonl (int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;
 int tipc_add_tlv (int ,int ,int *,int) ;

__attribute__((used)) static int tipc_nl_compat_net_dump(struct tipc_nl_compat_msg *msg,
       struct nlattr **attrs)
{
 __be32 id;
 struct nlattr *net[TIPC_NLA_NET_MAX + 1];
 int err;

 if (!attrs[TIPC_NLA_NET])
  return -EINVAL;

 err = nla_parse_nested_deprecated(net, TIPC_NLA_NET_MAX,
       attrs[TIPC_NLA_NET], ((void*)0), ((void*)0));
 if (err)
  return err;

 id = htonl(nla_get_u32(net[TIPC_NLA_NET_ID]));

 return tipc_add_tlv(msg->rep, TIPC_TLV_UNSIGNED, &id, sizeof(id));
}
