
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int name; } ;
struct hci_conn {int dummy; } ;


 int BT_DBG (char*,int ,int ) ;
 int a2mp_send_create_phy_link_rsp (struct hci_dev*,int ) ;
 scalar_t__ amp_write_rem_assoc_frag (struct hci_dev*,struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;

void amp_write_rem_assoc_continue(struct hci_dev *hdev, u8 handle)
{
 struct hci_conn *hcon;

 BT_DBG("%s phy handle 0x%2.2x", hdev->name, handle);

 hcon = hci_conn_hash_lookup_handle(hdev, handle);
 if (!hcon)
  return;


 if (amp_write_rem_assoc_frag(hdev, hcon))
  a2mp_send_create_phy_link_rsp(hdev, 0);
}
