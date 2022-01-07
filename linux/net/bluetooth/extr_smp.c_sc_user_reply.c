
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct smp_chan {int flags; int passkey_round; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_conn {scalar_t__ out; int passkey_notify; } ;
typedef int __le32 ;


 int EIO ;



 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 int SMP_CMD_DHKEY_CHECK ;
 int SMP_CMD_PAIRING_CONFIRM ;
 int SMP_FLAG_CFM_PENDING ;
 int SMP_FLAG_DHKEY_PENDING ;
 int SMP_FLAG_WAIT_USER ;
 int SMP_NUMERIC_COMP_FAILED ;
 int SMP_PASSKEY_ENTRY_FAILED ;
 int clear_bit (int ,int *) ;
 int le32_to_cpu (int ) ;
 int sc_add_ltk (struct smp_chan*) ;
 int sc_dhkey_check (struct smp_chan*) ;
 int sc_passkey_round (struct smp_chan*,int ) ;
 int smp_failure (struct l2cap_conn*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int sc_user_reply(struct smp_chan *smp, u16 mgmt_op, __le32 passkey)
{
 struct l2cap_conn *conn = smp->conn;
 struct hci_conn *hcon = conn->hcon;
 u8 smp_op;

 clear_bit(SMP_FLAG_WAIT_USER, &smp->flags);

 switch (mgmt_op) {
 case 129:
  smp_failure(smp->conn, SMP_PASSKEY_ENTRY_FAILED);
  return 0;
 case 130:
  smp_failure(smp->conn, SMP_NUMERIC_COMP_FAILED);
  return 0;
 case 128:
  hcon->passkey_notify = le32_to_cpu(passkey);
  smp->passkey_round = 0;

  if (test_and_clear_bit(SMP_FLAG_CFM_PENDING, &smp->flags))
   smp_op = SMP_CMD_PAIRING_CONFIRM;
  else
   smp_op = 0;

  if (sc_passkey_round(smp, smp_op))
   return -EIO;

  return 0;
 }


 if (hcon->out) {
  sc_dhkey_check(smp);
  SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
 } else if (test_and_clear_bit(SMP_FLAG_DHKEY_PENDING, &smp->flags)) {
  sc_dhkey_check(smp);
  sc_add_ltk(smp);
 }

 return 0;
}
