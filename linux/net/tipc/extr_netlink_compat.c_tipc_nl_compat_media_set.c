
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nl_compat_msg {int req; } ;
struct tipc_link_config {int name; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int TIPC_NLA_MEDIA ;
 int TIPC_NLA_MEDIA_NAME ;
 int TIPC_NLA_MEDIA_PROP ;
 scalar_t__ TLV_DATA (int ) ;
 int __tipc_add_link_prop (struct sk_buff*,struct tipc_nl_compat_msg*,struct tipc_link_config*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int tipc_nl_compat_media_set(struct sk_buff *skb,
        struct tipc_nl_compat_msg *msg)
{
 struct nlattr *prop;
 struct nlattr *media;
 struct tipc_link_config *lc;

 lc = (struct tipc_link_config *)TLV_DATA(msg->req);

 media = nla_nest_start_noflag(skb, TIPC_NLA_MEDIA);
 if (!media)
  return -EMSGSIZE;

 if (nla_put_string(skb, TIPC_NLA_MEDIA_NAME, lc->name))
  return -EMSGSIZE;

 prop = nla_nest_start_noflag(skb, TIPC_NLA_MEDIA_PROP);
 if (!prop)
  return -EMSGSIZE;

 __tipc_add_link_prop(skb, msg, lc);
 nla_nest_end(skb, prop);
 nla_nest_end(skb, media);

 return 0;
}
