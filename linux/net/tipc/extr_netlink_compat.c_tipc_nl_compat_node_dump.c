
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node_info {void* up; void* addr; } ;
struct tipc_nl_compat_msg {int rep; } ;
struct nlattr {int dummy; } ;
typedef int node_info ;


 int EINVAL ;
 size_t TIPC_NLA_NODE ;
 size_t TIPC_NLA_NODE_ADDR ;
 int TIPC_NLA_NODE_MAX ;
 size_t TIPC_NLA_NODE_UP ;
 int TIPC_TLV_NODE_INFO ;
 void* htonl (int ) ;
 int nla_get_flag (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;
 int tipc_add_tlv (int ,int ,struct tipc_node_info*,int) ;

__attribute__((used)) static int tipc_nl_compat_node_dump(struct tipc_nl_compat_msg *msg,
        struct nlattr **attrs)
{
 struct tipc_node_info node_info;
 struct nlattr *node[TIPC_NLA_NODE_MAX + 1];
 int err;

 if (!attrs[TIPC_NLA_NODE])
  return -EINVAL;

 err = nla_parse_nested_deprecated(node, TIPC_NLA_NODE_MAX,
       attrs[TIPC_NLA_NODE], ((void*)0), ((void*)0));
 if (err)
  return err;

 node_info.addr = htonl(nla_get_u32(node[TIPC_NLA_NODE_ADDR]));
 node_info.up = htonl(nla_get_flag(node[TIPC_NLA_NODE_UP]));

 return tipc_add_tlv(msg->rep, TIPC_TLV_NODE_INFO, &node_info,
       sizeof(node_info));
}
