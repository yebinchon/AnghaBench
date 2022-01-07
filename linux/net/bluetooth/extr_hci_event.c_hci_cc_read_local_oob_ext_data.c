
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_local_oob_ext_data {int status; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ,int ) ;

__attribute__((used)) static void hci_cc_read_local_oob_ext_data(struct hci_dev *hdev,
        struct sk_buff *skb)
{
 struct hci_rp_read_local_oob_ext_data *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);
}
