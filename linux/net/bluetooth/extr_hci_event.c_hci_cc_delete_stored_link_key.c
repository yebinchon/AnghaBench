
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_delete_stored_link_key {scalar_t__ num_keys; scalar_t__ status; } ;
struct hci_dev {scalar_t__ stored_num_keys; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;

__attribute__((used)) static void hci_cc_delete_stored_link_key(struct hci_dev *hdev,
       struct sk_buff *skb)
{
 struct hci_rp_delete_stored_link_key *rp = (void *)skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 if (rp->num_keys <= hdev->stored_num_keys)
  hdev->stored_num_keys -= rp->num_keys;
 else
  hdev->stored_num_keys = 0;
}
