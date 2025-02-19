
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_local_ext_features {scalar_t__ max_page; size_t page; int features; scalar_t__ status; } ;
struct hci_dev {scalar_t__ max_page; int * features; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 size_t HCI_MAX_PAGES ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void hci_cc_read_local_ext_features(struct hci_dev *hdev,
        struct sk_buff *skb)
{
 struct hci_rp_read_local_ext_features *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 if (hdev->max_page < rp->max_page)
  hdev->max_page = rp->max_page;

 if (rp->page < HCI_MAX_PAGES)
  memcpy(hdev->features[rp->page], rp->features, 8);
}
