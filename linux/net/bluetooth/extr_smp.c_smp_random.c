
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_chan {int enc_key_size; int rrnd; int prnd; int tk; int pcnf; int prsp; int preq; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_conn {scalar_t__ pending_sec_level; int dst_type; int dst; int hdev; int flags; int enc_key_size; scalar_t__ out; int resp_addr; int resp_addr_type; int init_addr; int init_addr_type; } ;
typedef int __le64 ;
typedef int __le16 ;


 int BT_DBG (char*,struct l2cap_conn*,char*) ;
 scalar_t__ BT_SECURITY_HIGH ;
 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_CONN_STK_ENCRYPT ;
 int SMP_CMD_PAIRING_RANDOM ;
 int SMP_CONFIRM_FAILED ;
 int SMP_STK ;
 int SMP_UNSPECIFIED ;
 int bt_dev_err (int ,char*) ;
 scalar_t__ crypto_memneq (int ,int*,int) ;
 int hci_add_ltk (int ,int *,int ,int ,int,int*,int ,int ,int ) ;
 int hci_le_start_enc (struct hci_conn*,int ,int ,int*,int ) ;
 int set_bit (int ,int *) ;
 int smp_c1 (int ,int ,int ,int ,int ,int *,int ,int *,int*) ;
 int smp_s1 (int ,int ,int ,int*) ;
 int smp_send_cmd (struct l2cap_conn*,int ,int,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static u8 smp_random(struct smp_chan *smp)
{
 struct l2cap_conn *conn = smp->conn;
 struct hci_conn *hcon = conn->hcon;
 u8 confirm[16];
 int ret;

 BT_DBG("conn %p %s", conn, conn->hcon->out ? "master" : "slave");

 ret = smp_c1(smp->tk, smp->rrnd, smp->preq, smp->prsp,
       hcon->init_addr_type, &hcon->init_addr,
       hcon->resp_addr_type, &hcon->resp_addr, confirm);
 if (ret)
  return SMP_UNSPECIFIED;

 if (crypto_memneq(smp->pcnf, confirm, sizeof(smp->pcnf))) {
  bt_dev_err(hcon->hdev, "pairing failed "
      "(confirmation values mismatch)");
  return SMP_CONFIRM_FAILED;
 }

 if (hcon->out) {
  u8 stk[16];
  __le64 rand = 0;
  __le16 ediv = 0;

  smp_s1(smp->tk, smp->rrnd, smp->prnd, stk);

  if (test_and_set_bit(HCI_CONN_ENCRYPT_PEND, &hcon->flags))
   return SMP_UNSPECIFIED;

  hci_le_start_enc(hcon, ediv, rand, stk, smp->enc_key_size);
  hcon->enc_key_size = smp->enc_key_size;
  set_bit(HCI_CONN_STK_ENCRYPT, &hcon->flags);
 } else {
  u8 stk[16], auth;
  __le64 rand = 0;
  __le16 ediv = 0;

  smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM, sizeof(smp->prnd),
        smp->prnd);

  smp_s1(smp->tk, smp->prnd, smp->rrnd, stk);

  if (hcon->pending_sec_level == BT_SECURITY_HIGH)
   auth = 1;
  else
   auth = 0;





  hci_add_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
       SMP_STK, auth, stk, smp->enc_key_size, ediv, rand);
 }

 return 0;
}
