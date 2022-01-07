
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct hci_dev {scalar_t__ sco_cnt; int name; } ;
struct hci_conn {int sent; int data_q; } ;


 int BT_DBG (char*,struct sk_buff*,...) ;
 int SCO_LINK ;
 int hci_conn_num (struct hci_dev*,int ) ;
 struct hci_conn* hci_low_sent (struct hci_dev*,int ,int*) ;
 int hci_send_frame (struct hci_dev*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void hci_sched_sco(struct hci_dev *hdev)
{
 struct hci_conn *conn;
 struct sk_buff *skb;
 int quote;

 BT_DBG("%s", hdev->name);

 if (!hci_conn_num(hdev, SCO_LINK))
  return;

 while (hdev->sco_cnt && (conn = hci_low_sent(hdev, SCO_LINK, &quote))) {
  while (quote-- && (skb = skb_dequeue(&conn->data_q))) {
   BT_DBG("skb %p len %d", skb, skb->len);
   hci_send_frame(hdev, skb);

   conn->sent++;
   if (conn->sent == ~0)
    conn->sent = 0;
  }
 }
}
