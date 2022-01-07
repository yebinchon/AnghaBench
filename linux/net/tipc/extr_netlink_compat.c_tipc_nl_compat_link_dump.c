
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nl_compat_msg {int rep; } ;
struct tipc_link_info {int str; int up; int dest; } ;
struct nlattr {int dummy; } ;
typedef int link_info ;


 int EINVAL ;
 int TIPC_MAX_LINK_NAME ;
 size_t TIPC_NLA_LINK ;
 size_t TIPC_NLA_LINK_DEST ;
 int TIPC_NLA_LINK_MAX ;
 size_t TIPC_NLA_LINK_NAME ;
 size_t TIPC_NLA_LINK_UP ;
 int TIPC_TLV_LINK_INFO ;
 int htonl (int ) ;
 int nla_get_flag (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;
 int nla_strlcpy (int ,struct nlattr*,int ) ;
 int tipc_add_tlv (int ,int ,struct tipc_link_info*,int) ;

__attribute__((used)) static int tipc_nl_compat_link_dump(struct tipc_nl_compat_msg *msg,
        struct nlattr **attrs)
{
 struct nlattr *link[TIPC_NLA_LINK_MAX + 1];
 struct tipc_link_info link_info;
 int err;

 if (!attrs[TIPC_NLA_LINK])
  return -EINVAL;

 err = nla_parse_nested_deprecated(link, TIPC_NLA_LINK_MAX,
       attrs[TIPC_NLA_LINK], ((void*)0), ((void*)0));
 if (err)
  return err;

 link_info.dest = nla_get_flag(link[TIPC_NLA_LINK_DEST]);
 link_info.up = htonl(nla_get_flag(link[TIPC_NLA_LINK_UP]));
 nla_strlcpy(link_info.str, link[TIPC_NLA_LINK_NAME],
      TIPC_MAX_LINK_NAME);

 return tipc_add_tlv(msg->rep, TIPC_TLV_LINK_INFO,
       &link_info, sizeof(link_info));
}
