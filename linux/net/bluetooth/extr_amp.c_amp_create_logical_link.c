
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct l2cap_chan {int remote_flush_to; int remote_acc_lat; int remote_sdu_itime; int remote_msdu; int remote_stype; int remote_id; int local_flush_to; int local_acc_lat; int local_sdu_itime; int local_msdu; int local_stype; int local_id; struct hci_conn* hs_hcon; TYPE_2__* conn; } ;
struct hci_dev {int dummy; } ;
struct TYPE_8__ {void* flush_to; void* acc_lat; void* sdu_itime; void* msdu; int stype; int id; } ;
struct TYPE_7__ {void* flush_to; void* acc_lat; void* sdu_itime; void* msdu; int stype; int id; } ;
struct hci_cp_create_accept_logical_link {TYPE_4__ rx_flow_spec; TYPE_3__ tx_flow_spec; int phy_handle; } ;
struct hci_conn {scalar_t__ out; int handle; int hdev; } ;
typedef int cp ;
struct TYPE_6__ {TYPE_1__* hcon; } ;
struct TYPE_5__ {int dst; } ;


 int BT_DBG (char*,struct l2cap_chan*,struct hci_conn*,int *) ;
 int HCI_OP_ACCEPT_LOGICAL_LINK ;
 int HCI_OP_CREATE_LOGICAL_LINK ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 struct hci_dev* hci_dev_hold (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_create_accept_logical_link*) ;

void amp_create_logical_link(struct l2cap_chan *chan)
{
 struct hci_conn *hs_hcon = chan->hs_hcon;
 struct hci_cp_create_accept_logical_link cp;
 struct hci_dev *hdev;

 BT_DBG("chan %p hs_hcon %p dst %pMR", chan, hs_hcon,
        &chan->conn->hcon->dst);

 if (!hs_hcon)
  return;

 hdev = hci_dev_hold(chan->hs_hcon->hdev);
 if (!hdev)
  return;

 cp.phy_handle = hs_hcon->handle;

 cp.tx_flow_spec.id = chan->local_id;
 cp.tx_flow_spec.stype = chan->local_stype;
 cp.tx_flow_spec.msdu = cpu_to_le16(chan->local_msdu);
 cp.tx_flow_spec.sdu_itime = cpu_to_le32(chan->local_sdu_itime);
 cp.tx_flow_spec.acc_lat = cpu_to_le32(chan->local_acc_lat);
 cp.tx_flow_spec.flush_to = cpu_to_le32(chan->local_flush_to);

 cp.rx_flow_spec.id = chan->remote_id;
 cp.rx_flow_spec.stype = chan->remote_stype;
 cp.rx_flow_spec.msdu = cpu_to_le16(chan->remote_msdu);
 cp.rx_flow_spec.sdu_itime = cpu_to_le32(chan->remote_sdu_itime);
 cp.rx_flow_spec.acc_lat = cpu_to_le32(chan->remote_acc_lat);
 cp.rx_flow_spec.flush_to = cpu_to_le32(chan->remote_flush_to);

 if (hs_hcon->out)
  hci_send_cmd(hdev, HCI_OP_CREATE_LOGICAL_LINK, sizeof(cp),
        &cp);
 else
  hci_send_cmd(hdev, HCI_OP_ACCEPT_LOGICAL_LINK, sizeof(cp),
        &cp);

 hci_dev_put(hdev);
}
