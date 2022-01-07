
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int flags; } ;


 int ENETDOWN ;
 struct sk_buff* ERR_PTR (int ) ;
 int HCI_UP ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int ,void const*,int ) ;
 int bt_dev_dbg (struct hci_dev*,char*,int ,int ) ;
 int hci_req_sync_lock (struct hci_dev*) ;
 int hci_req_sync_unlock (struct hci_dev*) ;
 int test_bit (int ,int *) ;

struct sk_buff *hci_cmd_sync(struct hci_dev *hdev, u16 opcode, u32 plen,
        const void *param, u32 timeout)
{
 struct sk_buff *skb;

 if (!test_bit(HCI_UP, &hdev->flags))
  return ERR_PTR(-ENETDOWN);

 bt_dev_dbg(hdev, "opcode 0x%4.4x plen %d", opcode, plen);

 hci_req_sync_lock(hdev);
 skb = __hci_cmd_sync(hdev, opcode, plen, param, timeout);
 hci_req_sync_unlock(hdev);

 return skb;
}
