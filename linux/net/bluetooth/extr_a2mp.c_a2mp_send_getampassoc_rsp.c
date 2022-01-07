
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct amp_assoc {int len; int data; } ;
struct hci_dev {int id; int name; struct amp_assoc loc_assoc; } ;
struct amp_mgr {int ident; } ;
struct a2mp_amp_assoc_rsp {int amp_assoc; int status; int id; } ;


 int A2MP_GETAMPASSOC_RSP ;
 int A2MP_STATUS_INVALID_CTRL_ID ;
 int A2MP_STATUS_SUCCESS ;
 int BT_DBG (char*,int ,struct amp_mgr*) ;
 int GFP_KERNEL ;
 int READ_LOC_AMP_ASSOC ;
 int a2mp_send (struct amp_mgr*,int ,int ,size_t,struct a2mp_amp_assoc_rsp*) ;
 struct amp_mgr* amp_mgr_lookup_by_state (int ) ;
 int amp_mgr_put (struct amp_mgr*) ;
 int kfree (struct a2mp_amp_assoc_rsp*) ;
 struct a2mp_amp_assoc_rsp* kzalloc (size_t,int ) ;
 int memcpy (int ,int ,int) ;

void a2mp_send_getampassoc_rsp(struct hci_dev *hdev, u8 status)
{
 struct amp_mgr *mgr;
 struct amp_assoc *loc_assoc = &hdev->loc_assoc;
 struct a2mp_amp_assoc_rsp *rsp;
 size_t len;

 mgr = amp_mgr_lookup_by_state(READ_LOC_AMP_ASSOC);
 if (!mgr)
  return;

 BT_DBG("%s mgr %p", hdev->name, mgr);

 len = sizeof(struct a2mp_amp_assoc_rsp) + loc_assoc->len;
 rsp = kzalloc(len, GFP_KERNEL);
 if (!rsp) {
  amp_mgr_put(mgr);
  return;
 }

 rsp->id = hdev->id;

 if (status) {
  rsp->status = A2MP_STATUS_INVALID_CTRL_ID;
 } else {
  rsp->status = A2MP_STATUS_SUCCESS;
  memcpy(rsp->amp_assoc, loc_assoc->data, loc_assoc->len);
 }

 a2mp_send(mgr, A2MP_GETAMPASSOC_RSP, mgr->ident, len, rsp);
 amp_mgr_put(mgr);
 kfree(rsp);
}
