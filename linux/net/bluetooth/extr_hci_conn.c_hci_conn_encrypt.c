
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_cp_set_conn_encrypt {int encrypt; int handle; } ;
struct hci_conn {int hdev; int handle; int flags; } ;
typedef int cp ;


 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_OP_SET_CONN_ENCRYPT ;
 int cpu_to_le16 (int ) ;
 int hci_send_cmd (int ,int ,int,struct hci_cp_set_conn_encrypt*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void hci_conn_encrypt(struct hci_conn *conn)
{
 BT_DBG("hcon %p", conn);

 if (!test_and_set_bit(HCI_CONN_ENCRYPT_PEND, &conn->flags)) {
  struct hci_cp_set_conn_encrypt cp;
  cp.handle = cpu_to_le16(conn->handle);
  cp.encrypt = 0x01;
  hci_send_cmd(conn->hdev, HCI_OP_SET_CONN_ENCRYPT, sizeof(cp),
        &cp);
 }
}
