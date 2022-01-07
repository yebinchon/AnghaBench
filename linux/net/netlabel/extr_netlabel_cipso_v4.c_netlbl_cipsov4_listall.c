
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; } ;
struct netlink_callback {int * args; TYPE_1__* nlh; } ;
struct netlbl_cipsov4_doiwalk_arg {int seq; struct sk_buff* skb; struct netlink_callback* nl_cb; } ;
struct TYPE_2__ {int nlmsg_seq; } ;


 int cipso_v4_doi_walk (int *,int ,struct netlbl_cipsov4_doiwalk_arg*) ;
 int netlbl_cipsov4_listall_cb ;

__attribute__((used)) static int netlbl_cipsov4_listall(struct sk_buff *skb,
      struct netlink_callback *cb)
{
 struct netlbl_cipsov4_doiwalk_arg cb_arg;
 u32 doi_skip = cb->args[0];

 cb_arg.nl_cb = cb;
 cb_arg.skb = skb;
 cb_arg.seq = cb->nlh->nlmsg_seq;

 cipso_v4_doi_walk(&doi_skip, netlbl_cipsov4_listall_cb, &cb_arg);

 cb->args[0] = doi_skip;
 return skb->len;
}
