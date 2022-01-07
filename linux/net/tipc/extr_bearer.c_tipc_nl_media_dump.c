
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tipc_nl_msg {int seq; int portid; struct sk_buff* skb; } ;
struct sk_buff {int len; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int MAX_MEDIA ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int __tipc_nl_add_media (struct tipc_nl_msg*,int *,int ) ;
 int ** media_info_array ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int tipc_nl_media_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 int err;
 int i = cb->args[0];
 struct tipc_nl_msg msg;

 if (i == MAX_MEDIA)
  return 0;

 msg.skb = skb;
 msg.portid = NETLINK_CB(cb->skb).portid;
 msg.seq = cb->nlh->nlmsg_seq;

 rtnl_lock();
 for (; media_info_array[i] != ((void*)0); i++) {
  err = __tipc_nl_add_media(&msg, media_info_array[i],
       NLM_F_MULTI);
  if (err)
   break;
 }
 rtnl_unlock();

 cb->args[0] = i;
 return skb->len;
}
