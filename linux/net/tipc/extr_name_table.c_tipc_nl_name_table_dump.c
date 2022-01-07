
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct tipc_nl_msg {int seq; int portid; struct sk_buff* skb; } ;
struct sk_buff {int len; int sk; } ;
struct netlink_callback {int* args; int prev_seq; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int EMSGSIZE ;
 TYPE_2__ NETLINK_CB (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct net* sock_net (int ) ;
 int tipc_nl_service_list (struct net*,struct tipc_nl_msg*,void**,void**,void**) ;

int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 u32 last_type = cb->args[0];
 u32 last_lower = cb->args[1];
 u32 last_key = cb->args[2];
 int done = cb->args[3];
 struct tipc_nl_msg msg;
 int err;

 if (done)
  return 0;

 msg.skb = skb;
 msg.portid = NETLINK_CB(cb->skb).portid;
 msg.seq = cb->nlh->nlmsg_seq;

 rcu_read_lock();
 err = tipc_nl_service_list(net, &msg, &last_type,
       &last_lower, &last_key);
 if (!err) {
  done = 1;
 } else if (err != -EMSGSIZE) {






  cb->prev_seq = 1;
 }
 rcu_read_unlock();

 cb->args[0] = last_type;
 cb->args[1] = last_lower;
 cb->args[2] = last_key;
 cb->args[3] = done;

 return skb->len;
}
