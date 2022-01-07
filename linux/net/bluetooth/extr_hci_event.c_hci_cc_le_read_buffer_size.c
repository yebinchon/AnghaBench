
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_le_read_buffer_size {int le_max_pkt; int le_mtu; scalar_t__ status; } ;
struct hci_dev {int le_pkts; int le_mtu; int name; int le_cnt; } ;


 int BT_DBG (char*,int ,int ,...) ;
 int __le16_to_cpu (int ) ;

__attribute__((used)) static void hci_cc_le_read_buffer_size(struct hci_dev *hdev,
           struct sk_buff *skb)
{
 struct hci_rp_le_read_buffer_size *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 hdev->le_mtu = __le16_to_cpu(rp->le_mtu);
 hdev->le_pkts = rp->le_max_pkt;

 hdev->le_cnt = hdev->le_pkts;

 BT_DBG("%s le mtu %d:%d", hdev->name, hdev->le_mtu, hdev->le_pkts);
}
