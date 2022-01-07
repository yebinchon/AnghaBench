
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_rp_write_remote_amp_assoc {int phy_handle; scalar_t__ status; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ,scalar_t__,int ) ;
 int amp_write_rem_assoc_continue (struct hci_dev*,int ) ;

__attribute__((used)) static void write_remote_amp_assoc_complete(struct hci_dev *hdev, u8 status,
         u16 opcode, struct sk_buff *skb)
{
 struct hci_rp_write_remote_amp_assoc *rp = (void *)skb->data;

 BT_DBG("%s status 0x%2.2x phy_handle 0x%2.2x",
        hdev->name, rp->status, rp->phy_handle);

 if (rp->status)
  return;

 amp_write_rem_assoc_continue(hdev, rp->phy_handle);
}
