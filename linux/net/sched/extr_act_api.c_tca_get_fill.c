
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tcamsg {scalar_t__ tca__pad2; scalar_t__ tca__pad1; int tca_family; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct nlattr {int dummy; } ;


 int AF_UNSPEC ;
 int TCA_ACT_TAB ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 struct tcamsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ tcf_action_dump (struct sk_buff*,struct tc_action**,int,int) ;

__attribute__((used)) static int tca_get_fill(struct sk_buff *skb, struct tc_action *actions[],
   u32 portid, u32 seq, u16 flags, int event, int bind,
   int ref)
{
 struct tcamsg *t;
 struct nlmsghdr *nlh;
 unsigned char *b = skb_tail_pointer(skb);
 struct nlattr *nest;

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*t), flags);
 if (!nlh)
  goto out_nlmsg_trim;
 t = nlmsg_data(nlh);
 t->tca_family = AF_UNSPEC;
 t->tca__pad1 = 0;
 t->tca__pad2 = 0;

 nest = nla_nest_start_noflag(skb, TCA_ACT_TAB);
 if (!nest)
  goto out_nlmsg_trim;

 if (tcf_action_dump(skb, actions, bind, ref) < 0)
  goto out_nlmsg_trim;

 nla_nest_end(skb, nest);

 nlh->nlmsg_len = skb_tail_pointer(skb) - b;
 return skb->len;

out_nlmsg_trim:
 nlmsg_trim(skb, b);
 return -1;
}
