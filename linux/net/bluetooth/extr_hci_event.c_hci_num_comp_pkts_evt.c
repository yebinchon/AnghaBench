
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct hci_ev_num_comp_pkts {int num_hndl; struct hci_comp_pkts_info* handles; } ;
struct hci_dev {scalar_t__ flow_ctl_mode; int tx_work; int workqueue; int sco_pkts; int sco_cnt; int acl_pkts; int acl_cnt; int le_pkts; int le_cnt; int name; } ;
struct hci_conn {int type; int sent; } ;
struct hci_comp_pkts_info {int count; int handle; } ;
typedef scalar_t__ __u16 ;



 int BT_DBG (char*,int ,...) ;
 scalar_t__ HCI_FLOW_CTL_MODE_PACKET_BASED ;


 scalar_t__ __le16_to_cpu (int ) ;
 int bt_dev_err (struct hci_dev*,char*,int,...) ;
 int handles ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,scalar_t__) ;
 int queue_work (int ,int *) ;
 int struct_size (struct hci_ev_num_comp_pkts*,int ,int) ;

__attribute__((used)) static void hci_num_comp_pkts_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_num_comp_pkts *ev = (void *) skb->data;
 int i;

 if (hdev->flow_ctl_mode != HCI_FLOW_CTL_MODE_PACKET_BASED) {
  bt_dev_err(hdev, "wrong event for mode %d", hdev->flow_ctl_mode);
  return;
 }

 if (skb->len < sizeof(*ev) ||
     skb->len < struct_size(ev, handles, ev->num_hndl)) {
  BT_DBG("%s bad parameters", hdev->name);
  return;
 }

 BT_DBG("%s num_hndl %d", hdev->name, ev->num_hndl);

 for (i = 0; i < ev->num_hndl; i++) {
  struct hci_comp_pkts_info *info = &ev->handles[i];
  struct hci_conn *conn;
  __u16 handle, count;

  handle = __le16_to_cpu(info->handle);
  count = __le16_to_cpu(info->count);

  conn = hci_conn_hash_lookup_handle(hdev, handle);
  if (!conn)
   continue;

  conn->sent -= count;

  switch (conn->type) {
  case 130:
   hdev->acl_cnt += count;
   if (hdev->acl_cnt > hdev->acl_pkts)
    hdev->acl_cnt = hdev->acl_pkts;
   break;

  case 129:
   if (hdev->le_pkts) {
    hdev->le_cnt += count;
    if (hdev->le_cnt > hdev->le_pkts)
     hdev->le_cnt = hdev->le_pkts;
   } else {
    hdev->acl_cnt += count;
    if (hdev->acl_cnt > hdev->acl_pkts)
     hdev->acl_cnt = hdev->acl_pkts;
   }
   break;

  case 128:
   hdev->sco_cnt += count;
   if (hdev->sco_cnt > hdev->sco_pkts)
    hdev->sco_cnt = hdev->sco_pkts;
   break;

  default:
   bt_dev_err(hdev, "unknown type %d conn %p",
       conn->type, conn);
   break;
  }
 }

 queue_work(hdev->workqueue, &hdev->tx_work);
}
