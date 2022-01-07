
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ priority; int len; } ;
struct hci_dev {unsigned int acl_cnt; int acl_last_tx; } ;
struct hci_chan {TYPE_1__* conn; int sent; int data_q; } ;
struct TYPE_4__ {int force_active; } ;
struct TYPE_3__ {int sent; } ;


 int ACL_LINK ;
 int BT_DBG (char*,struct hci_chan*,struct sk_buff*,int ,scalar_t__) ;
 int __check_timeout (struct hci_dev*,unsigned int) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 struct hci_chan* hci_chan_sent (struct hci_dev*,int ,int*) ;
 int hci_conn_enter_active_mode (TYPE_1__*,int ) ;
 int hci_prio_recalculate (struct hci_dev*,int ) ;
 int hci_send_frame (struct hci_dev*,struct sk_buff*) ;
 int jiffies ;
 struct sk_buff* skb_dequeue (int *) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static void hci_sched_acl_pkt(struct hci_dev *hdev)
{
 unsigned int cnt = hdev->acl_cnt;
 struct hci_chan *chan;
 struct sk_buff *skb;
 int quote;

 __check_timeout(hdev, cnt);

 while (hdev->acl_cnt &&
        (chan = hci_chan_sent(hdev, ACL_LINK, &quote))) {
  u32 priority = (skb_peek(&chan->data_q))->priority;
  while (quote-- && (skb = skb_peek(&chan->data_q))) {
   BT_DBG("chan %p skb %p len %d priority %u", chan, skb,
          skb->len, skb->priority);


   if (skb->priority < priority)
    break;

   skb = skb_dequeue(&chan->data_q);

   hci_conn_enter_active_mode(chan->conn,
         bt_cb(skb)->force_active);

   hci_send_frame(hdev, skb);
   hdev->acl_last_tx = jiffies;

   hdev->acl_cnt--;
   chan->sent++;
   chan->conn->sent++;
  }
 }

 if (cnt != hdev->acl_cnt)
  hci_prio_recalculate(hdev, ACL_LINK);
}
