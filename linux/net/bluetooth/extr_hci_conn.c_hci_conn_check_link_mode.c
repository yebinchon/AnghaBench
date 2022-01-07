
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {scalar_t__ key_type; int flags; int hdev; } ;


 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_CONN_AES_CCM ;
 int HCI_CONN_ENCRYPT ;
 scalar_t__ HCI_LK_AUTH_COMBINATION_P256 ;
 int HCI_SC_ONLY ;
 int hci_conn_sc_enabled (struct hci_conn*) ;
 scalar_t__ hci_conn_ssp_enabled (struct hci_conn*) ;
 scalar_t__ hci_dev_test_flag (int ,int ) ;
 int test_bit (int ,int *) ;

int hci_conn_check_link_mode(struct hci_conn *conn)
{
 BT_DBG("hcon %p", conn);





 if (hci_dev_test_flag(conn->hdev, HCI_SC_ONLY)) {
  if (!hci_conn_sc_enabled(conn) ||
      !test_bit(HCI_CONN_AES_CCM, &conn->flags) ||
      conn->key_type != HCI_LK_AUTH_COMBINATION_P256)
   return 0;
 }

 if (hci_conn_ssp_enabled(conn) &&
     !test_bit(HCI_CONN_ENCRYPT, &conn->flags))
  return 0;

 return 1;
}
