
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rfcomm_dlc {int tx_queue; int addr; int dlci; } ;
struct rfcomm_cmd {int fcs; int len; int ctrl; int addr; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RFCOMM_DISC ;
 int __ctrl (int ,int) ;
 int __fcs2 (int *) ;
 int __len8 (int ) ;
 struct rfcomm_cmd* __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int rfcomm_schedule () ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int rfcomm_queue_disc(struct rfcomm_dlc *d)
{
 struct rfcomm_cmd *cmd;
 struct sk_buff *skb;

 BT_DBG("dlc %p dlci %d", d, d->dlci);

 skb = alloc_skb(sizeof(*cmd), GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 cmd = __skb_put(skb, sizeof(*cmd));
 cmd->addr = d->addr;
 cmd->ctrl = __ctrl(RFCOMM_DISC, 1);
 cmd->len = __len8(0);
 cmd->fcs = __fcs2((u8 *) cmd);

 skb_queue_tail(&d->tx_queue, skb);
 rfcomm_schedule();
 return 0;
}
