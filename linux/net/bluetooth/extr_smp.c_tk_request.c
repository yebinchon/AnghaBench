
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct smp_chan {scalar_t__ method; int flags; int tk; } ;
struct l2cap_conn {struct l2cap_chan* smp; struct hci_conn* hcon; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_conn {scalar_t__ io_capability; scalar_t__ pending_sec_level; scalar_t__ role; int dst_type; int type; int dst; int hdev; } ;
typedef int passkey ;


 int BT_DBG (char*,int,...) ;
 scalar_t__ BT_SECURITY_HIGH ;
 scalar_t__ CFM_PASSKEY ;
 int EINVAL ;
 scalar_t__ HCI_IO_NO_INPUT_OUTPUT ;
 scalar_t__ HCI_ROLE_MASTER ;
 scalar_t__ JUST_CFM ;
 scalar_t__ JUST_WORKS ;
 scalar_t__ OVERLAP ;
 scalar_t__ REQ_PASSKEY ;
 int SMP_AUTH_MITM ;
 int SMP_FLAG_INITIATOR ;
 int SMP_FLAG_MITM_AUTH ;
 int SMP_FLAG_SC ;
 int SMP_FLAG_TK_VALID ;
 int clear_bit (int ,int *) ;
 scalar_t__ get_auth_method (struct smp_chan*,int,int) ;
 int get_random_bytes (int*,int) ;
 int memset (int ,int ,int) ;
 int mgmt_user_confirm_request (int ,int *,int ,int ,int,int) ;
 int mgmt_user_passkey_notify (int ,int *,int ,int ,int,int ) ;
 int mgmt_user_passkey_request (int ,int *,int ,int ) ;
 int put_unaligned_le32 (int,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int tk_request(struct l2cap_conn *conn, u8 remote_oob, u8 auth,
      u8 local_io, u8 remote_io)
{
 struct hci_conn *hcon = conn->hcon;
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp = chan->data;
 u32 passkey = 0;
 int ret = 0;


 memset(smp->tk, 0, sizeof(smp->tk));
 clear_bit(SMP_FLAG_TK_VALID, &smp->flags);

 BT_DBG("tk_request: auth:%d lcl:%d rem:%d", auth, local_io, remote_io);







 if (!(auth & SMP_AUTH_MITM))
  smp->method = JUST_CFM;
 else
  smp->method = get_auth_method(smp, local_io, remote_io);


 if (smp->method == JUST_CFM && test_bit(SMP_FLAG_INITIATOR,
      &smp->flags))
  smp->method = JUST_WORKS;


 if (smp->method == JUST_CFM &&
     hcon->io_capability == HCI_IO_NO_INPUT_OUTPUT)
  smp->method = JUST_WORKS;


 if (smp->method == JUST_WORKS) {
  set_bit(SMP_FLAG_TK_VALID, &smp->flags);
  return 0;
 }




 if (test_bit(SMP_FLAG_SC, &smp->flags))
  return -EINVAL;


 if (smp->method != JUST_CFM) {
  set_bit(SMP_FLAG_MITM_AUTH, &smp->flags);
  if (hcon->pending_sec_level < BT_SECURITY_HIGH)
   hcon->pending_sec_level = BT_SECURITY_HIGH;
 }




 if (smp->method == OVERLAP) {
  if (hcon->role == HCI_ROLE_MASTER)
   smp->method = CFM_PASSKEY;
  else
   smp->method = REQ_PASSKEY;
 }


 if (smp->method == CFM_PASSKEY) {
  memset(smp->tk, 0, sizeof(smp->tk));
  get_random_bytes(&passkey, sizeof(passkey));
  passkey %= 1000000;
  put_unaligned_le32(passkey, smp->tk);
  BT_DBG("PassKey: %d", passkey);
  set_bit(SMP_FLAG_TK_VALID, &smp->flags);
 }

 if (smp->method == REQ_PASSKEY)
  ret = mgmt_user_passkey_request(hcon->hdev, &hcon->dst,
      hcon->type, hcon->dst_type);
 else if (smp->method == JUST_CFM)
  ret = mgmt_user_confirm_request(hcon->hdev, &hcon->dst,
      hcon->type, hcon->dst_type,
      passkey, 1);
 else
  ret = mgmt_user_passkey_notify(hcon->hdev, &hcon->dst,
      hcon->type, hcon->dst_type,
      passkey, 0);

 return ret;
}
