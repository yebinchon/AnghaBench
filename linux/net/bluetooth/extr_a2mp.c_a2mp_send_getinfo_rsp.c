
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ amp_type; int amp_assoc_size; int amp_pal_cap; int amp_min_latency; int amp_max_bw; int amp_total_bw; int id; int name; } ;
struct amp_mgr {int ident; } ;
struct a2mp_info_rsp {void* assoc_size; void* pal_cap; void* min_latency; void* max_bw; void* total_bw; scalar_t__ status; int id; } ;
typedef int rsp ;


 int A2MP_GETINFO_RSP ;
 scalar_t__ A2MP_STATUS_INVALID_CTRL_ID ;
 scalar_t__ AMP_TYPE_BREDR ;
 int BT_DBG (char*,int ,struct amp_mgr*) ;
 int READ_LOC_AMP_INFO ;
 int a2mp_send (struct amp_mgr*,int ,int ,int,struct a2mp_info_rsp*) ;
 struct amp_mgr* amp_mgr_lookup_by_state (int ) ;
 int amp_mgr_put (struct amp_mgr*) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;

void a2mp_send_getinfo_rsp(struct hci_dev *hdev)
{
 struct amp_mgr *mgr;
 struct a2mp_info_rsp rsp;

 mgr = amp_mgr_lookup_by_state(READ_LOC_AMP_INFO);
 if (!mgr)
  return;

 BT_DBG("%s mgr %p", hdev->name, mgr);

 rsp.id = hdev->id;
 rsp.status = A2MP_STATUS_INVALID_CTRL_ID;

 if (hdev->amp_type != AMP_TYPE_BREDR) {
  rsp.status = 0;
  rsp.total_bw = cpu_to_le32(hdev->amp_total_bw);
  rsp.max_bw = cpu_to_le32(hdev->amp_max_bw);
  rsp.min_latency = cpu_to_le32(hdev->amp_min_latency);
  rsp.pal_cap = cpu_to_le16(hdev->amp_pal_cap);
  rsp.assoc_size = cpu_to_le16(hdev->amp_assoc_size);
 }

 a2mp_send(mgr, A2MP_GETINFO_RSP, mgr->ident, sizeof(rsp), &rsp);
 amp_mgr_put(mgr);
}
