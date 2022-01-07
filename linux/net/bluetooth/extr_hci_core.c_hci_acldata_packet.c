
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_2__ {int acl_rx; } ;
struct hci_dev {TYPE_1__ stat; int name; } ;
struct hci_conn {int dummy; } ;
struct hci_acl_hdr {int handle; } ;
typedef int __u16 ;


 int BT_DBG (char*,int ,int ,int ,int ) ;
 int BT_POWER_FORCE_ACTIVE_OFF ;
 int HCI_ACL_HDR_SIZE ;
 int __le16_to_cpu (int ) ;
 int bt_dev_err (struct hci_dev*,char*,int ) ;
 int hci_conn_enter_active_mode (struct hci_conn*,int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_flags (int ) ;
 int hci_handle (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_recv_acldata (struct hci_conn*,struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int ) ;

__attribute__((used)) static void hci_acldata_packet(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_acl_hdr *hdr = (void *) skb->data;
 struct hci_conn *conn;
 __u16 handle, flags;

 skb_pull(skb, HCI_ACL_HDR_SIZE);

 handle = __le16_to_cpu(hdr->handle);
 flags = hci_flags(handle);
 handle = hci_handle(handle);

 BT_DBG("%s len %d handle 0x%4.4x flags 0x%4.4x", hdev->name, skb->len,
        handle, flags);

 hdev->stat.acl_rx++;

 hci_dev_lock(hdev);
 conn = hci_conn_hash_lookup_handle(hdev, handle);
 hci_dev_unlock(hdev);

 if (conn) {
  hci_conn_enter_active_mode(conn, BT_POWER_FORCE_ACTIVE_OFF);


  l2cap_recv_acldata(conn, skb, flags);
  return;
 } else {
  bt_dev_err(hdev, "ACL packet for unknown connection handle %d",
      handle);
 }

 kfree_skb(skb);
}
