
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int priority; int len; } ;
struct l2cap_chan {TYPE_1__* conn; int flags; scalar_t__ hs_hchan; scalar_t__ hs_hcon; } ;
struct hci_conn {scalar_t__ type; int hdev; } ;
struct TYPE_4__ {scalar_t__ force_active; } ;
struct TYPE_3__ {scalar_t__ hchan; struct hci_conn* hcon; } ;


 int ACL_COMPLETE ;
 int ACL_START ;
 int ACL_START_NO_FLUSH ;
 int BT_DBG (char*,struct l2cap_chan*,struct sk_buff*,int ,int ) ;
 int FLAG_FLUSHABLE ;
 int FLAG_FORCE_ACTIVE ;
 scalar_t__ LE_LINK ;
 int __chan_is_moving (struct l2cap_chan*) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 int hci_send_acl (scalar_t__,struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ lmp_no_flush_capable (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_do_send(struct l2cap_chan *chan, struct sk_buff *skb)
{
 struct hci_conn *hcon = chan->conn->hcon;
 u16 flags;

 BT_DBG("chan %p, skb %p len %d priority %u", chan, skb, skb->len,
        skb->priority);

 if (chan->hs_hcon && !__chan_is_moving(chan)) {
  if (chan->hs_hchan)
   hci_send_acl(chan->hs_hchan, skb, ACL_COMPLETE);
  else
   kfree_skb(skb);

  return;
 }





 if (hcon->type == LE_LINK ||
     (!test_bit(FLAG_FLUSHABLE, &chan->flags) &&
      lmp_no_flush_capable(hcon->hdev)))
  flags = ACL_START_NO_FLUSH;
 else
  flags = ACL_START;

 bt_cb(skb)->force_active = test_bit(FLAG_FORCE_ACTIVE, &chan->flags);
 hci_send_acl(chan->conn->hchan, skb, flags);
}
