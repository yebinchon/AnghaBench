
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_request {int dummy; } ;
struct hci_dev {int name; } ;
struct hci_cp_create_phy_link {int key_type; int key_len; int key; int phy_handle; } ;
struct hci_conn {int handle; } ;
struct amp_mgr {TYPE_1__* l2cap_conn; } ;
typedef int cp ;
struct TYPE_2__ {int hcon; } ;


 int BT_DBG (char*,...) ;
 int HCI_OP_CREATE_PHY_LINK ;
 int create_phylink_complete ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_create_phy_link*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 scalar_t__ phylink_gen_key (int ,int ,int *,int *) ;

void amp_create_phylink(struct hci_dev *hdev, struct amp_mgr *mgr,
   struct hci_conn *hcon)
{
 struct hci_cp_create_phy_link cp;
 struct hci_request req;

 cp.phy_handle = hcon->handle;

 BT_DBG("%s hcon %p phy handle 0x%2.2x", hdev->name, hcon,
        hcon->handle);

 if (phylink_gen_key(mgr->l2cap_conn->hcon, cp.key, &cp.key_len,
       &cp.key_type)) {
  BT_DBG("Cannot create link key");
  return;
 }

 hci_req_init(&req, hdev);
 hci_req_add(&req, HCI_OP_CREATE_PHY_LINK, sizeof(cp), &cp);
 hci_req_run(&req, create_phylink_complete);
}
