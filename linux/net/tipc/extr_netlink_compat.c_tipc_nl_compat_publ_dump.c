
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_nl_compat_msg {int dummy; } ;
struct tipc_nl_compat_cmd_dump {int format; int dumpit; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_GOODSIZE ;
 int NLM_F_MULTI ;
 int TIPC_NLA_SOCK ;
 int TIPC_NLA_SOCK_REF ;
 int TIPC_NL_PUBL_GET ;
 int __tipc_nl_compat_dumpit (struct tipc_nl_compat_cmd_dump*,struct tipc_nl_compat_msg*,struct sk_buff*) ;
 int __tipc_nl_compat_publ_dump ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int tipc_genl_family ;
 int tipc_nl_publ_dump ;

__attribute__((used)) static int tipc_nl_compat_publ_dump(struct tipc_nl_compat_msg *msg, u32 sock)
{
 int err;
 void *hdr;
 struct nlattr *nest;
 struct sk_buff *args;
 struct tipc_nl_compat_cmd_dump dump;

 args = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!args)
  return -ENOMEM;

 hdr = genlmsg_put(args, 0, 0, &tipc_genl_family, NLM_F_MULTI,
     TIPC_NL_PUBL_GET);
 if (!hdr) {
  kfree_skb(args);
  return -EMSGSIZE;
 }

 nest = nla_nest_start_noflag(args, TIPC_NLA_SOCK);
 if (!nest) {
  kfree_skb(args);
  return -EMSGSIZE;
 }

 if (nla_put_u32(args, TIPC_NLA_SOCK_REF, sock)) {
  kfree_skb(args);
  return -EMSGSIZE;
 }

 nla_nest_end(args, nest);
 genlmsg_end(args, hdr);

 dump.dumpit = tipc_nl_publ_dump;
 dump.format = __tipc_nl_compat_publ_dump;

 err = __tipc_nl_compat_dumpit(&dump, msg, args);

 kfree_skb(args);

 return err;
}
