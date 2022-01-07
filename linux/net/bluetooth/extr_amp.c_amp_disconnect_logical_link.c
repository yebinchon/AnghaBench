
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_cp_disconn_logical_link {int log_handle; } ;
struct hci_conn {scalar_t__ state; int hdev; } ;
struct hci_chan {int handle; struct hci_conn* conn; } ;
typedef int cp ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct hci_chan*) ;
 int HCI_OP_DISCONN_LOGICAL_LINK ;
 int cpu_to_le16 (int ) ;
 int hci_send_cmd (int ,int ,int,struct hci_cp_disconn_logical_link*) ;

void amp_disconnect_logical_link(struct hci_chan *hchan)
{
 struct hci_conn *hcon = hchan->conn;
 struct hci_cp_disconn_logical_link cp;

 if (hcon->state != BT_CONNECTED) {
  BT_DBG("hchan %p not connected", hchan);
  return;
 }

 cp.log_handle = cpu_to_le16(hchan->handle);
 hci_send_cmd(hcon->hdev, HCI_OP_DISCONN_LOGICAL_LINK, sizeof(cp), &cp);
}
