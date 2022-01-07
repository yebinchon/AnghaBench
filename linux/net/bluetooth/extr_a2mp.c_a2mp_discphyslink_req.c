
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int dummy; } ;
struct amp_mgr {TYPE_2__* l2cap_conn; } ;
struct a2mp_physlink_rsp {int status; int remote_id; int local_id; } ;
struct a2mp_physlink_req {int remote_id; int local_id; } ;
struct a2mp_cmd {int ident; int len; } ;
typedef int rsp ;
struct TYPE_4__ {TYPE_1__* hcon; } ;
struct TYPE_3__ {int dst; } ;


 int A2MP_DISCONNPHYSLINK_RSP ;
 int A2MP_STATUS_INVALID_CTRL_ID ;
 int A2MP_STATUS_NO_PHYSICAL_LINK_EXISTS ;
 int A2MP_STATUS_SUCCESS ;
 int AMP_LINK ;
 int BT_DBG (char*,int ,int ) ;
 int EINVAL ;
 int a2mp_send (struct amp_mgr*,int ,int ,int,struct a2mp_physlink_rsp*) ;
 int bt_dev_err (struct hci_dev*,char*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 int le16_to_cpu (int ) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int a2mp_discphyslink_req(struct amp_mgr *mgr, struct sk_buff *skb,
     struct a2mp_cmd *hdr)
{
 struct a2mp_physlink_req *req = (void *) skb->data;
 struct a2mp_physlink_rsp rsp;
 struct hci_dev *hdev;
 struct hci_conn *hcon;

 if (le16_to_cpu(hdr->len) < sizeof(*req))
  return -EINVAL;

 BT_DBG("local_id %d remote_id %d", req->local_id, req->remote_id);

 rsp.local_id = req->remote_id;
 rsp.remote_id = req->local_id;
 rsp.status = A2MP_STATUS_SUCCESS;

 hdev = hci_dev_get(req->remote_id);
 if (!hdev) {
  rsp.status = A2MP_STATUS_INVALID_CTRL_ID;
  goto send_rsp;
 }

 hcon = hci_conn_hash_lookup_ba(hdev, AMP_LINK,
           &mgr->l2cap_conn->hcon->dst);
 if (!hcon) {
  bt_dev_err(hdev, "no phys link exist");
  rsp.status = A2MP_STATUS_NO_PHYSICAL_LINK_EXISTS;
  goto clean;
 }



clean:
 hci_dev_put(hdev);

send_rsp:
 a2mp_send(mgr, A2MP_DISCONNPHYSLINK_RSP, hdr->ident, sizeof(rsp), &rsp);

 skb_pull(skb, sizeof(*req));
 return 0;
}
