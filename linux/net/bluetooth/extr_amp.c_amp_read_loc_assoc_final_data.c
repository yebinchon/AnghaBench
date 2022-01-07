
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int dummy; } ;
struct hci_dev {int amp_assoc_size; } ;
struct hci_cp_read_local_amp_assoc {void* max_len; void* len_so_far; int phy_handle; } ;
struct hci_conn {int handle; struct amp_mgr* amp_mgr; } ;
struct amp_mgr {int state; } ;
typedef int cp ;


 int A2MP_STATUS_INVALID_CTRL_ID ;
 int HCI_OP_READ_LOCAL_AMP_ASSOC ;
 int READ_LOC_AMP_ASSOC_FINAL ;
 int a2mp_send_getampassoc_rsp (struct hci_dev*,int ) ;
 void* cpu_to_le16 (int ) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_read_local_amp_assoc*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run_skb (struct hci_request*,int ) ;
 int read_local_amp_assoc_complete ;
 int set_bit (int ,int *) ;

void amp_read_loc_assoc_final_data(struct hci_dev *hdev,
       struct hci_conn *hcon)
{
 struct hci_cp_read_local_amp_assoc cp;
 struct amp_mgr *mgr = hcon->amp_mgr;
 struct hci_request req;
 int err;

 cp.phy_handle = hcon->handle;
 cp.len_so_far = cpu_to_le16(0);
 cp.max_len = cpu_to_le16(hdev->amp_assoc_size);

 set_bit(READ_LOC_AMP_ASSOC_FINAL, &mgr->state);


 hci_req_init(&req, hdev);
 hci_req_add(&req, HCI_OP_READ_LOCAL_AMP_ASSOC, sizeof(cp), &cp);
 err = hci_req_run_skb(&req, read_local_amp_assoc_complete);
 if (err < 0)
  a2mp_send_getampassoc_rsp(hdev, A2MP_STATUS_INVALID_CTRL_ID);
}
