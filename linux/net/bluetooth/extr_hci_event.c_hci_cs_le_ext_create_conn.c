
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int name; } ;
struct hci_cp_le_ext_create_conn {int filter_policy; int own_addr_type; int peer_addr_type; int peer_addr; } ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_OP_LE_EXT_CREATE_CONN ;
 int cs_le_create_conn (struct hci_dev*,int *,int ,int ,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_cp_le_ext_create_conn* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cs_le_ext_create_conn(struct hci_dev *hdev, u8 status)
{
 struct hci_cp_le_ext_create_conn *cp;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);





 if (status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_LE_EXT_CREATE_CONN);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 cs_le_create_conn(hdev, &cp->peer_addr, cp->peer_addr_type,
     cp->own_addr_type, cp->filter_policy);

 hci_dev_unlock(hdev);
}
