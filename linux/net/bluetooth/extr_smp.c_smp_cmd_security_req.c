
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct smp_cmd_security_req {scalar_t__ auth_req; } ;
struct smp_cmd_pairing {int dummy; } ;
struct smp_chan {int * preq; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ role; scalar_t__ io_capability; scalar_t__ sec_level; scalar_t__ pending_sec_level; struct hci_dev* hdev; } ;
typedef int cp ;


 scalar_t__ AUTH_REQ_MASK (struct hci_dev*) ;
 int BT_DBG (char*,struct l2cap_conn*) ;
 scalar_t__ BT_SECURITY_MEDIUM ;
 int HCI_BONDABLE ;
 scalar_t__ HCI_IO_NO_INPUT_OUTPUT ;
 scalar_t__ HCI_ROLE_MASTER ;
 int HCI_SC_ONLY ;
 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 scalar_t__ SMP_AUTH_BONDING ;
 scalar_t__ SMP_AUTH_REQUIREMENTS ;
 scalar_t__ SMP_AUTH_SC ;
 scalar_t__ SMP_CMD_NOTSUPP ;
 int SMP_CMD_PAIRING_REQ ;
 int SMP_CMD_PAIRING_RSP ;
 scalar_t__ SMP_INVALID_PARAMS ;
 scalar_t__ SMP_PAIRING_NOTSUPP ;
 scalar_t__ SMP_UNSPECIFIED ;
 int SMP_USE_LTK ;
 scalar_t__ authreq_to_seclevel (scalar_t__) ;
 int build_pairing_cmd (struct l2cap_conn*,struct smp_cmd_pairing*,int *,scalar_t__) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int memcpy (int *,struct smp_cmd_pairing*,int) ;
 int memset (struct smp_cmd_pairing*,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 struct smp_chan* smp_chan_create (struct l2cap_conn*) ;
 scalar_t__ smp_ltk_encrypt (struct l2cap_conn*,scalar_t__) ;
 int smp_send_cmd (struct l2cap_conn*,int ,int,struct smp_cmd_pairing*) ;
 scalar_t__ smp_sufficient_security (struct hci_conn*,scalar_t__,int ) ;

__attribute__((used)) static u8 smp_cmd_security_req(struct l2cap_conn *conn, struct sk_buff *skb)
{
 struct smp_cmd_security_req *rp = (void *) skb->data;
 struct smp_cmd_pairing cp;
 struct hci_conn *hcon = conn->hcon;
 struct hci_dev *hdev = hcon->hdev;
 struct smp_chan *smp;
 u8 sec_level, auth;

 BT_DBG("conn %p", conn);

 if (skb->len < sizeof(*rp))
  return SMP_INVALID_PARAMS;

 if (hcon->role != HCI_ROLE_MASTER)
  return SMP_CMD_NOTSUPP;

 auth = rp->auth_req & AUTH_REQ_MASK(hdev);

 if (hci_dev_test_flag(hdev, HCI_SC_ONLY) && !(auth & SMP_AUTH_SC))
  return SMP_AUTH_REQUIREMENTS;

 if (hcon->io_capability == HCI_IO_NO_INPUT_OUTPUT)
  sec_level = BT_SECURITY_MEDIUM;
 else
  sec_level = authreq_to_seclevel(auth);

 if (smp_sufficient_security(hcon, sec_level, SMP_USE_LTK)) {




  smp_ltk_encrypt(conn, hcon->sec_level);
  return 0;
 }

 if (sec_level > hcon->pending_sec_level)
  hcon->pending_sec_level = sec_level;

 if (smp_ltk_encrypt(conn, hcon->pending_sec_level))
  return 0;

 smp = smp_chan_create(conn);
 if (!smp)
  return SMP_UNSPECIFIED;

 if (!hci_dev_test_flag(hdev, HCI_BONDABLE) &&
     (auth & SMP_AUTH_BONDING))
  return SMP_PAIRING_NOTSUPP;

 skb_pull(skb, sizeof(*rp));

 memset(&cp, 0, sizeof(cp));
 build_pairing_cmd(conn, &cp, ((void*)0), auth);

 smp->preq[0] = SMP_CMD_PAIRING_REQ;
 memcpy(&smp->preq[1], &cp, sizeof(cp));

 smp_send_cmd(conn, SMP_CMD_PAIRING_REQ, sizeof(cp), &cp);
 SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_RSP);

 return 0;
}
