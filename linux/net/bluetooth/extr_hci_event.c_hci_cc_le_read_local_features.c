
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_le_read_local_features {int features; scalar_t__ status; } ;
struct hci_dev {int le_features; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void hci_cc_le_read_local_features(struct hci_dev *hdev,
       struct sk_buff *skb)
{
 struct hci_rp_le_read_local_features *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 memcpy(hdev->le_features, rp->features, 8);
}
