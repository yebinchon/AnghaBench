
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct smp_chan {scalar_t__ method; int flags; int tfm_cmac; int tk; int mackey; int * prnd; int pcnf; int * rrnd; int * local_pk; int * remote_pk; } ;
struct sk_buff {int len; int data; } ;
struct l2cap_conn {struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_conn {int dst_type; int type; int dst; int hdev; scalar_t__ out; } ;


 int BT_DBG (char*,struct l2cap_conn*) ;
 scalar_t__ DSP_PASSKEY ;
 scalar_t__ JUST_WORKS ;
 scalar_t__ REQ_OOB ;
 scalar_t__ REQ_PASSKEY ;
 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 int SMP_CMD_DHKEY_CHECK ;
 int SMP_CMD_PAIRING_RANDOM ;
 int SMP_CONFIRM_FAILED ;
 int SMP_FLAG_SC ;
 int SMP_FLAG_WAIT_USER ;
 int SMP_INVALID_PARAMS ;
 int SMP_UNSPECIFIED ;
 scalar_t__ crypto_memneq (int ,int *,int) ;
 int memcpy (int *,int ,int) ;
 int mgmt_user_confirm_request (int ,int *,int ,int ,int ,int ) ;
 int sc_dhkey_check (struct smp_chan*) ;
 int sc_mackey_and_ltk (struct smp_chan*,int ,int ) ;
 int sc_passkey_round (struct smp_chan*,int ) ;
 int set_bit (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int smp_f4 (int ,int *,int *,int *,int ,int *) ;
 int smp_g2 (int ,int *,int *,int *,int *,int *) ;
 int smp_random (struct smp_chan*) ;
 int smp_send_cmd (struct l2cap_conn*,int ,int,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
{
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp = chan->data;
 struct hci_conn *hcon = conn->hcon;
 u8 *pkax, *pkbx, *na, *nb;
 u32 passkey;
 int err;

 BT_DBG("conn %p", conn);

 if (skb->len < sizeof(smp->rrnd))
  return SMP_INVALID_PARAMS;

 memcpy(smp->rrnd, skb->data, sizeof(smp->rrnd));
 skb_pull(skb, sizeof(smp->rrnd));

 if (!test_bit(SMP_FLAG_SC, &smp->flags))
  return smp_random(smp);

 if (hcon->out) {
  pkax = smp->local_pk;
  pkbx = smp->remote_pk;
  na = smp->prnd;
  nb = smp->rrnd;
 } else {
  pkax = smp->remote_pk;
  pkbx = smp->local_pk;
  na = smp->rrnd;
  nb = smp->prnd;
 }

 if (smp->method == REQ_OOB) {
  if (!hcon->out)
   smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM,
         sizeof(smp->prnd), smp->prnd);
  SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
  goto mackey_and_ltk;
 }


 if (smp->method == REQ_PASSKEY || smp->method == DSP_PASSKEY)
  return sc_passkey_round(smp, SMP_CMD_PAIRING_RANDOM);

 if (hcon->out) {
  u8 cfm[16];

  err = smp_f4(smp->tfm_cmac, smp->remote_pk, smp->local_pk,
        smp->rrnd, 0, cfm);
  if (err)
   return SMP_UNSPECIFIED;

  if (crypto_memneq(smp->pcnf, cfm, 16))
   return SMP_CONFIRM_FAILED;
 } else {
  smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM, sizeof(smp->prnd),
        smp->prnd);
  SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
 }

mackey_and_ltk:

 err = sc_mackey_and_ltk(smp, smp->mackey, smp->tk);
 if (err)
  return SMP_UNSPECIFIED;

 if (smp->method == JUST_WORKS || smp->method == REQ_OOB) {
  if (hcon->out) {
   sc_dhkey_check(smp);
   SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
  }
  return 0;
 }

 err = smp_g2(smp->tfm_cmac, pkax, pkbx, na, nb, &passkey);
 if (err)
  return SMP_UNSPECIFIED;

 err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst, hcon->type,
     hcon->dst_type, passkey, 0);
 if (err)
  return SMP_UNSPECIFIED;

 set_bit(SMP_FLAG_WAIT_USER, &smp->flags);

 return 0;
}
