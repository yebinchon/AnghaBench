
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_inq_rsp_tx_power {int tx_power; scalar_t__ status; } ;
struct hci_dev {int inq_tx_power; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;

__attribute__((used)) static void hci_cc_read_inq_rsp_tx_power(struct hci_dev *hdev,
      struct sk_buff *skb)
{
 struct hci_rp_read_inq_rsp_tx_power *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 hdev->inq_tx_power = rp->tx_power;
}
