
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_hdr {int len; int cid; } ;
struct l2cap_conn {int pending_rx; struct hci_conn* hcon; } ;
struct hci_conn {scalar_t__ state; scalar_t__ type; int dst; TYPE_1__* hdev; } ;
typedef int __le16 ;
struct TYPE_2__ {int blacklist; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,...) ;



 int L2CAP_HDR_SIZE ;
 int L2CAP_PSMLEN_SIZE ;
 scalar_t__ LE_LINK ;
 scalar_t__ __le16_to_cpu (int ) ;
 int bdaddr_dst_type (struct hci_conn*) ;
 int get_unaligned (int *) ;
 scalar_t__ hci_bdaddr_list_lookup (int *,int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_conless_channel (struct l2cap_conn*,int ,struct sk_buff*) ;
 int l2cap_data_channel (struct l2cap_conn*,scalar_t__,struct sk_buff*) ;
 int l2cap_le_sig_channel (struct l2cap_conn*,struct sk_buff*) ;
 int l2cap_sig_channel (struct l2cap_conn*,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void l2cap_recv_frame(struct l2cap_conn *conn, struct sk_buff *skb)
{
 struct l2cap_hdr *lh = (void *) skb->data;
 struct hci_conn *hcon = conn->hcon;
 u16 cid, len;
 __le16 psm;

 if (hcon->state != BT_CONNECTED) {
  BT_DBG("queueing pending rx skb");
  skb_queue_tail(&conn->pending_rx, skb);
  return;
 }

 skb_pull(skb, L2CAP_HDR_SIZE);
 cid = __le16_to_cpu(lh->cid);
 len = __le16_to_cpu(lh->len);

 if (len != skb->len) {
  kfree_skb(skb);
  return;
 }




 if (hcon->type == LE_LINK &&
     hci_bdaddr_list_lookup(&hcon->hdev->blacklist, &hcon->dst,
       bdaddr_dst_type(hcon))) {
  kfree_skb(skb);
  return;
 }

 BT_DBG("len %d, cid 0x%4.4x", len, cid);

 switch (cid) {
 case 128:
  l2cap_sig_channel(conn, skb);
  break;

 case 130:
  psm = get_unaligned((__le16 *) skb->data);
  skb_pull(skb, L2CAP_PSMLEN_SIZE);
  l2cap_conless_channel(conn, psm, skb);
  break;

 case 129:
  l2cap_le_sig_channel(conn, skb);
  break;

 default:
  l2cap_data_channel(conn, cid, skb);
  break;
 }
}
