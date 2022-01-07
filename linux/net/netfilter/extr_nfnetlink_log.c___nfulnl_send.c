
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nlmsghdr {int dummy; } ;
struct nfulnl_instance {int qlen; TYPE_1__* skb; int peer_portid; int net; } ;
struct nfgenmsg {int dummy; } ;
struct TYPE_5__ {int len; } ;


 int MSG_DONTWAIT ;
 int NLMSG_DONE ;
 scalar_t__ WARN_ONCE (int,char*,int ,int ) ;
 int kfree_skb (TYPE_1__*) ;
 int nfnetlink_unicast (TYPE_1__*,int ,int ,int ) ;
 struct nlmsghdr* nlmsg_put (TYPE_1__*,int ,int ,int ,int,int ) ;
 int skb_tailroom (TYPE_1__*) ;

__attribute__((used)) static void
__nfulnl_send(struct nfulnl_instance *inst)
{
 if (inst->qlen > 1) {
  struct nlmsghdr *nlh = nlmsg_put(inst->skb, 0, 0,
       NLMSG_DONE,
       sizeof(struct nfgenmsg),
       0);
  if (WARN_ONCE(!nlh, "bad nlskb size: %u, tailroom %d\n",
         inst->skb->len, skb_tailroom(inst->skb))) {
   kfree_skb(inst->skb);
   goto out;
  }
 }
 nfnetlink_unicast(inst->skb, inst->net, inst->peer_portid,
     MSG_DONTWAIT);
out:
 inst->qlen = 0;
 inst->skb = ((void*)0);
}
