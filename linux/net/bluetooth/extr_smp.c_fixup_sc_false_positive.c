
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_cmd_pairing {int init_key_dist; int resp_key_dist; int auth_req; int io_capability; } ;
struct smp_chan {int remote_key_dist; int flags; int * prsp; int * preq; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ out; struct hci_dev* hdev; } ;


 int AUTH_REQ_MASK (struct hci_dev*) ;
 int HCI_SC_ONLY ;
 int SMP_FLAG_SC ;
 int SMP_UNSPECIFIED ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ tk_request (struct l2cap_conn*,int ,int,int ,int ) ;

__attribute__((used)) static int fixup_sc_false_positive(struct smp_chan *smp)
{
 struct l2cap_conn *conn = smp->conn;
 struct hci_conn *hcon = conn->hcon;
 struct hci_dev *hdev = hcon->hdev;
 struct smp_cmd_pairing *req, *rsp;
 u8 auth;


 if (hcon->out)
  return SMP_UNSPECIFIED;

 if (hci_dev_test_flag(hdev, HCI_SC_ONLY)) {
  bt_dev_err(hdev, "refusing legacy fallback in SC-only mode");
  return SMP_UNSPECIFIED;
 }

 bt_dev_err(hdev, "trying to fall back to legacy SMP");

 req = (void *) &smp->preq[1];
 rsp = (void *) &smp->prsp[1];


 smp->remote_key_dist = (req->init_key_dist & rsp->resp_key_dist);

 auth = req->auth_req & AUTH_REQ_MASK(hdev);

 if (tk_request(conn, 0, auth, rsp->io_capability, req->io_capability)) {
  bt_dev_err(hdev, "failed to fall back to legacy SMP");
  return SMP_UNSPECIFIED;
 }

 clear_bit(SMP_FLAG_SC, &smp->flags);

 return 0;
}
