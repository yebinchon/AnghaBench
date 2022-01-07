
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_cmd_pairing {int dummy; } ;
struct smp_chan {int * preq; int flags; } ;
struct l2cap_conn {int remote_fixed_chan; struct hci_conn* hcon; } ;
struct l2cap_chan {scalar_t__ data; struct l2cap_conn* conn; } ;
struct hci_dev {struct l2cap_chan* name; } ;
struct hci_conn {scalar_t__ role; int flags; struct hci_dev* hdev; } ;
typedef int req ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int HCI_CONN_AES_CCM ;
 int HCI_CONN_ENCRYPT ;
 int HCI_CONN_NEW_LINK_KEY ;
 int HCI_FORCE_BREDR_SMP ;
 int HCI_LE_ENABLED ;
 scalar_t__ HCI_ROLE_MASTER ;
 int HCI_SC_ENABLED ;
 int L2CAP_FC_SMP_BREDR ;
 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 int SMP_CMD_PAIRING_REQ ;
 int SMP_CMD_PAIRING_RSP ;
 int SMP_FLAG_SC ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int build_bredr_pairing_cmd (struct smp_chan*,struct smp_cmd_pairing*,int *) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int lmp_host_le_capable (struct hci_conn*) ;
 int memcpy (int *,struct smp_cmd_pairing*,int) ;
 int set_bit (int ,int *) ;
 struct smp_chan* smp_chan_create (struct l2cap_conn*) ;
 int smp_send_cmd (struct l2cap_conn*,int ,int,struct smp_cmd_pairing*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void bredr_pairing(struct l2cap_chan *chan)
{
 struct l2cap_conn *conn = chan->conn;
 struct hci_conn *hcon = conn->hcon;
 struct hci_dev *hdev = hcon->hdev;
 struct smp_cmd_pairing req;
 struct smp_chan *smp;

 BT_DBG("chan %p", chan);


 if (!test_bit(HCI_CONN_NEW_LINK_KEY, &hcon->flags))
  return;


 if (!test_bit(HCI_CONN_ENCRYPT, &hcon->flags))
  return;


 if (hcon->role != HCI_ROLE_MASTER)
  return;


 if (!hci_dev_test_flag(hdev, HCI_SC_ENABLED))
  return;


 if (!test_bit(HCI_CONN_AES_CCM, &hcon->flags) &&
     !hci_dev_test_flag(hdev, HCI_FORCE_BREDR_SMP))
  return;


 if (!hci_dev_test_flag(hdev, HCI_LE_ENABLED))
  return;


 if (!lmp_host_le_capable(hcon))
  return;


 if (!(conn->remote_fixed_chan & L2CAP_FC_SMP_BREDR))
  return;


 if (chan->data)
  return;

 smp = smp_chan_create(conn);
 if (!smp) {
  bt_dev_err(hdev, "unable to create SMP context for BR/EDR");
  return;
 }

 set_bit(SMP_FLAG_SC, &smp->flags);

 BT_DBG("%s starting SMP over BR/EDR", hdev->name);


 build_bredr_pairing_cmd(smp, &req, ((void*)0));

 smp->preq[0] = SMP_CMD_PAIRING_REQ;
 memcpy(&smp->preq[1], &req, sizeof(req));

 smp_send_cmd(conn, SMP_CMD_PAIRING_REQ, sizeof(req), &req);
 SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_RSP);
}
