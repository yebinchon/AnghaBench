
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_le_read_white_list_size {int size; scalar_t__ status; } ;
struct hci_dev {int le_white_list_size; int name; } ;


 int BT_DBG (char*,int ,scalar_t__,int ) ;

__attribute__((used)) static void hci_cc_le_read_white_list_size(struct hci_dev *hdev,
        struct sk_buff *skb)
{
 struct hci_rp_le_read_white_list_size *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x size %u", hdev->name, rp->status, rp->size);

 if (rp->status)
  return;

 hdev->le_white_list_size = rp->size;
}
