
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct l2cap_create_chan_rsp {void* status; void* result; void* scid; scalar_t__ dcid; } ;
struct l2cap_create_chan_req {scalar_t__ amp_id; int scid; int psm; } ;
struct l2cap_conn {int local_fixed_chan; int mtu; TYPE_1__* hcon; } ;
struct l2cap_cmd_hdr {int ident; } ;
struct l2cap_chan {int fcs; struct hci_conn* hs_hcon; int dcid; int scid; } ;
struct hci_dev {scalar_t__ dev_type; int block_mtu; int flags; } ;
struct hci_conn {int dummy; } ;
struct amp_mgr {struct l2cap_chan* bredr_chan; } ;
typedef int rsp ;
struct TYPE_2__ {int dst; struct amp_mgr* amp_mgr; } ;


 scalar_t__ AMP_ID_BREDR ;
 int AMP_LINK ;
 int BT_DBG (char*,...) ;
 int EINVAL ;
 int EPROTO ;
 scalar_t__ HCI_AMP ;
 int HCI_UP ;
 int L2CAP_CREATE_CHAN_RSP ;
 int L2CAP_CR_BAD_AMP ;
 int L2CAP_CS_NO_INFO ;
 int L2CAP_FCS_NONE ;
 int L2CAP_FC_A2MP ;
 int cmd_reject_invalid_cid (struct l2cap_conn*,int ,int ,int ) ;
 void* cpu_to_le16 (int) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 struct hci_dev* hci_dev_get (scalar_t__) ;
 int hci_dev_put (struct hci_dev*) ;
 struct l2cap_chan* l2cap_connect (struct l2cap_conn*,struct l2cap_cmd_hdr*,void*,int ,scalar_t__) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_create_chan_rsp*) ;
 int le16_to_cpu (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int l2cap_create_channel_req(struct l2cap_conn *conn,
        struct l2cap_cmd_hdr *cmd,
        u16 cmd_len, void *data)
{
 struct l2cap_create_chan_req *req = data;
 struct l2cap_create_chan_rsp rsp;
 struct l2cap_chan *chan;
 struct hci_dev *hdev;
 u16 psm, scid;

 if (cmd_len != sizeof(*req))
  return -EPROTO;

 if (!(conn->local_fixed_chan & L2CAP_FC_A2MP))
  return -EINVAL;

 psm = le16_to_cpu(req->psm);
 scid = le16_to_cpu(req->scid);

 BT_DBG("psm 0x%2.2x, scid 0x%4.4x, amp_id %d", psm, scid, req->amp_id);


 if (req->amp_id == AMP_ID_BREDR) {
  l2cap_connect(conn, cmd, data, L2CAP_CREATE_CHAN_RSP,
         req->amp_id);
  return 0;
 }


 hdev = hci_dev_get(req->amp_id);
 if (!hdev)
  goto error;

 if (hdev->dev_type != HCI_AMP || !test_bit(HCI_UP, &hdev->flags)) {
  hci_dev_put(hdev);
  goto error;
 }

 chan = l2cap_connect(conn, cmd, data, L2CAP_CREATE_CHAN_RSP,
        req->amp_id);
 if (chan) {
  struct amp_mgr *mgr = conn->hcon->amp_mgr;
  struct hci_conn *hs_hcon;

  hs_hcon = hci_conn_hash_lookup_ba(hdev, AMP_LINK,
        &conn->hcon->dst);
  if (!hs_hcon) {
   hci_dev_put(hdev);
   cmd_reject_invalid_cid(conn, cmd->ident, chan->scid,
            chan->dcid);
   return 0;
  }

  BT_DBG("mgr %p bredr_chan %p hs_hcon %p", mgr, chan, hs_hcon);

  mgr->bredr_chan = chan;
  chan->hs_hcon = hs_hcon;
  chan->fcs = L2CAP_FCS_NONE;
  conn->mtu = hdev->block_mtu;
 }

 hci_dev_put(hdev);

 return 0;

error:
 rsp.dcid = 0;
 rsp.scid = cpu_to_le16(scid);
 rsp.result = cpu_to_le16(L2CAP_CR_BAD_AMP);
 rsp.status = cpu_to_le16(L2CAP_CS_NO_INFO);

 l2cap_send_cmd(conn, cmd->ident, L2CAP_CREATE_CHAN_RSP,
         sizeof(rsp), &rsp);

 return 0;
}
