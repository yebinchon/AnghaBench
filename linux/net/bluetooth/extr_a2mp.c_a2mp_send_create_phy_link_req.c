
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_chan {int remote_amp_id; } ;
struct amp_assoc {int len; int data; } ;
struct hci_dev {int id; int name; struct amp_assoc loc_assoc; } ;
struct amp_mgr {struct l2cap_chan* bredr_chan; } ;
struct a2mp_physlink_req {int amp_assoc; int remote_id; int local_id; } ;


 int A2MP_CREATEPHYSLINK_REQ ;
 int BT_DBG (char*,int ,struct amp_mgr*,size_t) ;
 int GFP_KERNEL ;
 int READ_LOC_AMP_ASSOC_FINAL ;
 int __next_ident (struct amp_mgr*) ;
 int a2mp_send (struct amp_mgr*,int ,int ,size_t,struct a2mp_physlink_req*) ;
 struct amp_mgr* amp_mgr_lookup_by_state (int ) ;
 int amp_mgr_put (struct amp_mgr*) ;
 int kfree (struct a2mp_physlink_req*) ;
 struct a2mp_physlink_req* kzalloc (size_t,int ) ;
 int memcpy (int ,int ,int) ;

void a2mp_send_create_phy_link_req(struct hci_dev *hdev, u8 status)
{
 struct amp_mgr *mgr;
 struct amp_assoc *loc_assoc = &hdev->loc_assoc;
 struct a2mp_physlink_req *req;
 struct l2cap_chan *bredr_chan;
 size_t len;

 mgr = amp_mgr_lookup_by_state(READ_LOC_AMP_ASSOC_FINAL);
 if (!mgr)
  return;

 len = sizeof(*req) + loc_assoc->len;

 BT_DBG("%s mgr %p assoc_len %zu", hdev->name, mgr, len);

 req = kzalloc(len, GFP_KERNEL);
 if (!req) {
  amp_mgr_put(mgr);
  return;
 }

 bredr_chan = mgr->bredr_chan;
 if (!bredr_chan)
  goto clean;

 req->local_id = hdev->id;
 req->remote_id = bredr_chan->remote_amp_id;
 memcpy(req->amp_assoc, loc_assoc->data, loc_assoc->len);

 a2mp_send(mgr, A2MP_CREATEPHYSLINK_REQ, __next_ident(mgr), len, req);

clean:
 amp_mgr_put(mgr);
 kfree(req);
}
