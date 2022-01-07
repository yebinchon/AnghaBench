
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_chan {int passkey_round; int prnd; int flags; int tk; int mackey; int pcnf; int rrnd; int local_pk; int remote_pk; int tfm_cmac; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_dev {int name; } ;
struct hci_conn {int passkey_notify; int out; struct hci_dev* hdev; } ;


 int BT_DBG (char*,int ,int) ;
 int SMP_ALLOW_CMD (struct smp_chan*,int const) ;
 int const SMP_CMD_DHKEY_CHECK ;



 int SMP_CONFIRM_FAILED ;
 int SMP_FLAG_CFM_PENDING ;
 int SMP_FLAG_WAIT_USER ;
 int SMP_UNSPECIFIED ;
 int crypto_memneq (int ,int*,int) ;
 int sc_dhkey_check (struct smp_chan*) ;
 int sc_mackey_and_ltk (struct smp_chan*,int ,int ) ;
 int sc_passkey_send_confirm (struct smp_chan*) ;
 int set_bit (int ,int *) ;
 int smp_f4 (int ,int ,int ,int ,int,int*) ;
 int smp_send_cmd (struct l2cap_conn*,int const,int,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u8 sc_passkey_round(struct smp_chan *smp, u8 smp_op)
{
 struct l2cap_conn *conn = smp->conn;
 struct hci_conn *hcon = conn->hcon;
 struct hci_dev *hdev = hcon->hdev;
 u8 cfm[16], r;


 if (smp->passkey_round >= 20)
  return 0;

 switch (smp_op) {
 case 129:
  r = ((hcon->passkey_notify >> smp->passkey_round) & 0x01);
  r |= 0x80;

  if (smp_f4(smp->tfm_cmac, smp->remote_pk, smp->local_pk,
      smp->rrnd, r, cfm))
   return SMP_UNSPECIFIED;

  if (crypto_memneq(smp->pcnf, cfm, 16))
   return SMP_CONFIRM_FAILED;

  smp->passkey_round++;

  if (smp->passkey_round == 20) {

   if (sc_mackey_and_ltk(smp, smp->mackey, smp->tk))
    return SMP_UNSPECIFIED;
  }




  if (!hcon->out) {
   smp_send_cmd(conn, 129,
         sizeof(smp->prnd), smp->prnd);
   if (smp->passkey_round == 20)
    SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
   else
    SMP_ALLOW_CMD(smp, 130);
   return 0;
  }


  if (smp->passkey_round != 20)
   return sc_passkey_round(smp, 0);


  sc_dhkey_check(smp);
  SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);

  break;

 case 130:
  if (test_bit(SMP_FLAG_WAIT_USER, &smp->flags)) {
   set_bit(SMP_FLAG_CFM_PENDING, &smp->flags);
   return 0;
  }

  SMP_ALLOW_CMD(smp, 129);

  if (hcon->out) {
   smp_send_cmd(conn, 129,
         sizeof(smp->prnd), smp->prnd);
   return 0;
  }

  return sc_passkey_send_confirm(smp);

 case 128:
 default:

  if (!hcon->out)
   return 0;

  BT_DBG("%s Starting passkey round %u", hdev->name,
         smp->passkey_round + 1);

  SMP_ALLOW_CMD(smp, 130);

  return sc_passkey_send_confirm(smp);
 }

 return 0;
}
