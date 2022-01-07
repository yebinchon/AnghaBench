
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_ltk {int dummy; } ;
struct smp_csrk {int val; int type; } ;
struct smp_cmd_sign_info {void** ltk; void** csrk; int addr_type; int bdaddr; int irk; void* rand; void* ediv; } ;
struct smp_cmd_pairing {int init_key_dist; int resp_key_dist; } ;
struct smp_cmd_master_ident {void** ltk; void** csrk; int addr_type; int bdaddr; int irk; void* rand; void* ediv; } ;
struct smp_cmd_ident_info {void** ltk; void** csrk; int addr_type; int bdaddr; int irk; void* rand; void* ediv; } ;
struct smp_cmd_ident_addr_info {void** ltk; void** csrk; int addr_type; int bdaddr; int irk; void* rand; void* ediv; } ;
struct smp_cmd_encrypt_info {void** ltk; void** csrk; int addr_type; int bdaddr; int irk; void* rand; void* ediv; } ;
struct smp_chan {int remote_key_dist; int enc_key_size; int flags; struct smp_csrk* slave_csrk; struct smp_ltk* slave_ltk; int * preq; int * prsp; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_dev {void** irk; } ;
struct hci_conn {scalar_t__ type; scalar_t__ sec_level; int src_type; int src; int dst_type; int dst; scalar_t__ out; struct hci_dev* hdev; } ;
typedef int sign ;
typedef int rand ;
typedef int idinfo ;
typedef int ident ;
typedef int enc ;
typedef int ediv ;
typedef int addrinfo ;
typedef int __u8 ;
typedef void* __le64 ;
typedef void* __le16 ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,...) ;
 scalar_t__ BT_SECURITY_HIGH ;
 scalar_t__ BT_SECURITY_MEDIUM ;
 int GFP_KERNEL ;
 int KEY_DIST_MASK ;
 scalar_t__ LE_LINK ;
 int MGMT_CSRK_LOCAL_AUTHENTICATED ;
 int MGMT_CSRK_LOCAL_UNAUTHENTICATED ;
 int SMP_CMD_ENCRYPT_INFO ;
 int SMP_CMD_IDENT_ADDR_INFO ;
 int SMP_CMD_IDENT_INFO ;
 int SMP_CMD_MASTER_IDENT ;
 int SMP_CMD_SIGN_INFO ;
 int SMP_DIST_ENC_KEY ;
 int SMP_DIST_ID_KEY ;
 int SMP_DIST_LINK_KEY ;
 int SMP_DIST_SIGN ;
 int SMP_FLAG_COMPLETE ;
 int SMP_FLAG_SC ;
 int SMP_LTK_SLAVE ;
 int SMP_SC_NO_DIST ;
 int bacpy (int *,int *) ;
 int get_random_bytes (void**,int) ;
 struct smp_ltk* hci_add_ltk (struct hci_dev*,int *,int ,int ,int,void**,int,void*,void*) ;
 struct smp_csrk* kzalloc (int,int ) ;
 int memcpy (int ,void**,int) ;
 int memset (void**,int ,int) ;
 int sc_generate_link_key (struct smp_chan*) ;
 int sc_generate_ltk (struct smp_chan*) ;
 int set_bit (int ,int *) ;
 int smp_allow_key_dist (struct smp_chan*) ;
 int smp_chan_destroy (struct l2cap_conn*) ;
 int smp_notify_keys (struct l2cap_conn*) ;
 int smp_send_cmd (struct l2cap_conn*,int ,int,struct smp_cmd_sign_info*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void smp_distribute_keys(struct smp_chan *smp)
{
 struct smp_cmd_pairing *req, *rsp;
 struct l2cap_conn *conn = smp->conn;
 struct hci_conn *hcon = conn->hcon;
 struct hci_dev *hdev = hcon->hdev;
 __u8 *keydist;

 BT_DBG("conn %p", conn);

 rsp = (void *) &smp->prsp[1];


 if (hcon->out && (smp->remote_key_dist & KEY_DIST_MASK)) {
  smp_allow_key_dist(smp);
  return;
 }

 req = (void *) &smp->preq[1];

 if (hcon->out) {
  keydist = &rsp->init_key_dist;
  *keydist &= req->init_key_dist;
 } else {
  keydist = &rsp->resp_key_dist;
  *keydist &= req->resp_key_dist;
 }

 if (test_bit(SMP_FLAG_SC, &smp->flags)) {
  if (hcon->type == LE_LINK && (*keydist & SMP_DIST_LINK_KEY))
   sc_generate_link_key(smp);
  if (hcon->type == ACL_LINK && (*keydist & SMP_DIST_ENC_KEY))
   sc_generate_ltk(smp);


  *keydist &= ~SMP_SC_NO_DIST;
 }

 BT_DBG("keydist 0x%x", *keydist);

 if (*keydist & SMP_DIST_ENC_KEY) {
  struct smp_cmd_encrypt_info enc;
  struct smp_cmd_master_ident ident;
  struct smp_ltk *ltk;
  u8 authenticated;
  __le16 ediv;
  __le64 rand;





  get_random_bytes(enc.ltk, smp->enc_key_size);
  memset(enc.ltk + smp->enc_key_size, 0,
         sizeof(enc.ltk) - smp->enc_key_size);

  get_random_bytes(&ediv, sizeof(ediv));
  get_random_bytes(&rand, sizeof(rand));

  smp_send_cmd(conn, SMP_CMD_ENCRYPT_INFO, sizeof(enc), &enc);

  authenticated = hcon->sec_level == BT_SECURITY_HIGH;
  ltk = hci_add_ltk(hdev, &hcon->dst, hcon->dst_type,
      SMP_LTK_SLAVE, authenticated, enc.ltk,
      smp->enc_key_size, ediv, rand);
  smp->slave_ltk = ltk;

  ident.ediv = ediv;
  ident.rand = rand;

  smp_send_cmd(conn, SMP_CMD_MASTER_IDENT, sizeof(ident), &ident);

  *keydist &= ~SMP_DIST_ENC_KEY;
 }

 if (*keydist & SMP_DIST_ID_KEY) {
  struct smp_cmd_ident_addr_info addrinfo;
  struct smp_cmd_ident_info idinfo;

  memcpy(idinfo.irk, hdev->irk, sizeof(idinfo.irk));

  smp_send_cmd(conn, SMP_CMD_IDENT_INFO, sizeof(idinfo), &idinfo);







  bacpy(&addrinfo.bdaddr, &hcon->src);
  addrinfo.addr_type = hcon->src_type;

  smp_send_cmd(conn, SMP_CMD_IDENT_ADDR_INFO, sizeof(addrinfo),
        &addrinfo);

  *keydist &= ~SMP_DIST_ID_KEY;
 }

 if (*keydist & SMP_DIST_SIGN) {
  struct smp_cmd_sign_info sign;
  struct smp_csrk *csrk;


  get_random_bytes(sign.csrk, sizeof(sign.csrk));

  csrk = kzalloc(sizeof(*csrk), GFP_KERNEL);
  if (csrk) {
   if (hcon->sec_level > BT_SECURITY_MEDIUM)
    csrk->type = MGMT_CSRK_LOCAL_AUTHENTICATED;
   else
    csrk->type = MGMT_CSRK_LOCAL_UNAUTHENTICATED;
   memcpy(csrk->val, sign.csrk, sizeof(csrk->val));
  }
  smp->slave_csrk = csrk;

  smp_send_cmd(conn, SMP_CMD_SIGN_INFO, sizeof(sign), &sign);

  *keydist &= ~SMP_DIST_SIGN;
 }


 if (smp->remote_key_dist & KEY_DIST_MASK) {
  smp_allow_key_dist(smp);
  return;
 }

 set_bit(SMP_FLAG_COMPLETE, &smp->flags);
 smp_notify_keys(conn);

 smp_chan_destroy(conn);
}
