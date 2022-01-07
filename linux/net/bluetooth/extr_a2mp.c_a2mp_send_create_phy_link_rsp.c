
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int id; int name; } ;
struct hci_conn {int remote_id; } ;
struct amp_mgr {int ident; } ;
struct a2mp_physlink_rsp {int local_id; int status; int remote_id; } ;
typedef int rsp ;


 int A2MP_CREATEPHYSLINK_RSP ;
 int A2MP_STATUS_SUCCESS ;
 int A2MP_STATUS_UNABLE_START_LINK_CREATION ;
 int AMP_LINK ;
 int BT_CONNECT ;
 int BT_DBG (char*,int ,struct amp_mgr*,struct hci_conn*,int ) ;
 int WRITE_REMOTE_AMP_ASSOC ;
 int a2mp_send (struct amp_mgr*,int ,int ,int,struct a2mp_physlink_rsp*) ;
 struct amp_mgr* amp_mgr_lookup_by_state (int ) ;
 int amp_mgr_put (struct amp_mgr*) ;
 struct hci_conn* hci_conn_hash_lookup_state (struct hci_dev*,int ,int ) ;

void a2mp_send_create_phy_link_rsp(struct hci_dev *hdev, u8 status)
{
 struct amp_mgr *mgr;
 struct a2mp_physlink_rsp rsp;
 struct hci_conn *hs_hcon;

 mgr = amp_mgr_lookup_by_state(WRITE_REMOTE_AMP_ASSOC);
 if (!mgr)
  return;

 hs_hcon = hci_conn_hash_lookup_state(hdev, AMP_LINK, BT_CONNECT);
 if (!hs_hcon) {
  rsp.status = A2MP_STATUS_UNABLE_START_LINK_CREATION;
 } else {
  rsp.remote_id = hs_hcon->remote_id;
  rsp.status = A2MP_STATUS_SUCCESS;
 }

 BT_DBG("%s mgr %p hs_hcon %p status %u", hdev->name, mgr, hs_hcon,
        status);

 rsp.local_id = hdev->id;
 a2mp_send(mgr, A2MP_CREATEPHYSLINK_RSP, mgr->ident, sizeof(rsp), &rsp);
 amp_mgr_put(mgr);
}
