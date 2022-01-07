
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {scalar_t__ amp_type; } ;
struct hci_conn {int dummy; } ;
struct amp_mgr {int ident; int state; } ;
struct amp_ctrl {size_t assoc_len; size_t assoc_rem_len; scalar_t__ assoc_len_so_far; int * assoc; } ;
struct a2mp_physlink_rsp {scalar_t__ status; int remote_id; int local_id; } ;
struct a2mp_physlink_req {int local_id; int amp_assoc; int remote_id; } ;
struct a2mp_cmd {int len; int ident; } ;
typedef int rsp ;


 int A2MP_CREATEPHYSLINK_RSP ;
 scalar_t__ A2MP_STATUS_INVALID_CTRL_ID ;
 scalar_t__ A2MP_STATUS_SUCCESS ;
 void* A2MP_STATUS_UNABLE_START_LINK_CREATION ;
 scalar_t__ AMP_TYPE_BREDR ;
 int BT_DBG (char*,int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WRITE_REMOTE_AMP_ASSOC ;
 int a2mp_send (struct amp_mgr*,int ,int ,int,struct a2mp_physlink_rsp*) ;
 int amp_accept_phylink (struct hci_dev*,struct amp_mgr*,struct hci_conn*) ;
 struct amp_ctrl* amp_ctrl_add (struct amp_mgr*,int ) ;
 int amp_ctrl_get (struct amp_ctrl*) ;
 struct amp_ctrl* amp_ctrl_lookup (struct amp_mgr*,int ) ;
 int amp_ctrl_put (struct amp_ctrl*) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 int * kmemdup (int ,size_t,int ) ;
 int le16_to_cpu (int ) ;
 struct hci_conn* phylink_add (struct hci_dev*,struct amp_mgr*,int ,int) ;
 int set_bit (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int a2mp_createphyslink_req(struct amp_mgr *mgr, struct sk_buff *skb,
       struct a2mp_cmd *hdr)
{
 struct a2mp_physlink_req *req = (void *) skb->data;

 struct a2mp_physlink_rsp rsp;
 struct hci_dev *hdev;
 struct hci_conn *hcon;
 struct amp_ctrl *ctrl;

 if (le16_to_cpu(hdr->len) < sizeof(*req))
  return -EINVAL;

 BT_DBG("local_id %d, remote_id %d", req->local_id, req->remote_id);

 rsp.local_id = req->remote_id;
 rsp.remote_id = req->local_id;

 hdev = hci_dev_get(req->remote_id);
 if (!hdev || hdev->amp_type == AMP_TYPE_BREDR) {
  rsp.status = A2MP_STATUS_INVALID_CTRL_ID;
  goto send_rsp;
 }

 ctrl = amp_ctrl_lookup(mgr, rsp.remote_id);
 if (!ctrl) {
  ctrl = amp_ctrl_add(mgr, rsp.remote_id);
  if (ctrl) {
   amp_ctrl_get(ctrl);
  } else {
   rsp.status = A2MP_STATUS_UNABLE_START_LINK_CREATION;
   goto send_rsp;
  }
 }

 if (ctrl) {
  size_t assoc_len = le16_to_cpu(hdr->len) - sizeof(*req);
  u8 *assoc;

  assoc = kmemdup(req->amp_assoc, assoc_len, GFP_KERNEL);
  if (!assoc) {
   amp_ctrl_put(ctrl);
   return -ENOMEM;
  }

  ctrl->assoc = assoc;
  ctrl->assoc_len = assoc_len;
  ctrl->assoc_rem_len = assoc_len;
  ctrl->assoc_len_so_far = 0;

  amp_ctrl_put(ctrl);
 }

 hcon = phylink_add(hdev, mgr, req->local_id, 0);
 if (hcon) {
  amp_accept_phylink(hdev, mgr, hcon);
  rsp.status = A2MP_STATUS_SUCCESS;
 } else {
  rsp.status = A2MP_STATUS_UNABLE_START_LINK_CREATION;
 }

send_rsp:
 if (hdev)
  hci_dev_put(hdev);




 if (rsp.status != A2MP_STATUS_SUCCESS) {
  a2mp_send(mgr, A2MP_CREATEPHYSLINK_RSP, hdr->ident,
     sizeof(rsp), &rsp);
 } else {
  set_bit(WRITE_REMOTE_AMP_ASSOC, &mgr->state);
  mgr->ident = hdr->ident;
 }

 skb_pull(skb, le16_to_cpu(hdr->len));
 return 0;
}
