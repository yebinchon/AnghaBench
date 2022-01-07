
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_metrics_block {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; int skb; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int EMSGSIZE ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int TCP_METRICS_CMD_GET ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ tcp_metrics_fill_info (struct sk_buff*,struct tcp_metrics_block*) ;
 int tcp_metrics_nl_family ;

__attribute__((used)) static int tcp_metrics_dump_info(struct sk_buff *skb,
     struct netlink_callback *cb,
     struct tcp_metrics_block *tm)
{
 void *hdr;

 hdr = genlmsg_put(skb, NETLINK_CB(cb->skb).portid, cb->nlh->nlmsg_seq,
     &tcp_metrics_nl_family, NLM_F_MULTI,
     TCP_METRICS_CMD_GET);
 if (!hdr)
  return -EMSGSIZE;

 if (tcp_metrics_fill_info(skb, tm) < 0)
  goto nla_put_failure;

 genlmsg_end(skb, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(skb, hdr);
 return -EMSGSIZE;
}
