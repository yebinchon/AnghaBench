
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct smp_chan {int flags; int tk; } ;
struct l2cap_conn {struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_conn {struct l2cap_conn* l2cap_data; } ;
typedef int __le32 ;


 int BT_DBG (char*,...) ;
 int ENOTCONN ;
 int EOPNOTSUPP ;




 int SMP_FLAG_CFM_PENDING ;
 int SMP_FLAG_SC ;
 int SMP_FLAG_TK_VALID ;
 scalar_t__ SMP_PASSKEY_ENTRY_FAILED ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int le32_to_cpu (int ) ;
 int memset (int ,int ,int) ;
 int put_unaligned_le32 (int ,int ) ;
 int sc_user_reply (struct smp_chan*,int ,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ smp_confirm (struct smp_chan*) ;
 int smp_failure (struct l2cap_conn*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

int smp_user_confirm_reply(struct hci_conn *hcon, u16 mgmt_op, __le32 passkey)
{
 struct l2cap_conn *conn = hcon->l2cap_data;
 struct l2cap_chan *chan;
 struct smp_chan *smp;
 u32 value;
 int err;

 BT_DBG("");

 if (!conn)
  return -ENOTCONN;

 chan = conn->smp;
 if (!chan)
  return -ENOTCONN;

 l2cap_chan_lock(chan);
 if (!chan->data) {
  err = -ENOTCONN;
  goto unlock;
 }

 smp = chan->data;

 if (test_bit(SMP_FLAG_SC, &smp->flags)) {
  err = sc_user_reply(smp, mgmt_op, passkey);
  goto unlock;
 }

 switch (mgmt_op) {
 case 128:
  value = le32_to_cpu(passkey);
  memset(smp->tk, 0, sizeof(smp->tk));
  BT_DBG("PassKey: %d", value);
  put_unaligned_le32(value, smp->tk);

 case 130:
  set_bit(SMP_FLAG_TK_VALID, &smp->flags);
  break;
 case 129:
 case 131:
  smp_failure(conn, SMP_PASSKEY_ENTRY_FAILED);
  err = 0;
  goto unlock;
 default:
  smp_failure(conn, SMP_PASSKEY_ENTRY_FAILED);
  err = -EOPNOTSUPP;
  goto unlock;
 }

 err = 0;


 if (test_bit(SMP_FLAG_CFM_PENDING, &smp->flags)) {
  u8 rsp = smp_confirm(smp);
  if (rsp)
   smp_failure(conn, rsp);
 }

unlock:
 l2cap_chan_unlock(chan);
 return err;
}
