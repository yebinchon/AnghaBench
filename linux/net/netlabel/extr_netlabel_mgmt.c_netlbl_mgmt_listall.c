
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct sk_buff {int len; } ;
struct netlink_callback {void** args; TYPE_1__* nlh; } ;
struct netlbl_domhsh_walk_arg {int seq; struct sk_buff* skb; struct netlink_callback* nl_cb; } ;
struct TYPE_2__ {int nlmsg_seq; } ;


 int netlbl_domhsh_walk (void**,void**,int ,struct netlbl_domhsh_walk_arg*) ;
 int netlbl_mgmt_listall_cb ;

__attribute__((used)) static int netlbl_mgmt_listall(struct sk_buff *skb,
          struct netlink_callback *cb)
{
 struct netlbl_domhsh_walk_arg cb_arg;
 u32 skip_bkt = cb->args[0];
 u32 skip_chain = cb->args[1];

 cb_arg.nl_cb = cb;
 cb_arg.skb = skb;
 cb_arg.seq = cb->nlh->nlmsg_seq;

 netlbl_domhsh_walk(&skip_bkt,
      &skip_chain,
      netlbl_mgmt_listall_cb,
      &cb_arg);

 cb->args[0] = skip_bkt;
 cb->args[1] = skip_chain;
 return skb->len;
}
