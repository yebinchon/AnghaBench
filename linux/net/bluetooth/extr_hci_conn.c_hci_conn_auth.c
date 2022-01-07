
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_cp_auth_requested {int handle; } ;
struct hci_conn {scalar_t__ pending_sec_level; scalar_t__ sec_level; int auth_type; int flags; int hdev; int handle; } ;
typedef int cp ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_CONN_AUTH ;
 int HCI_CONN_AUTH_PEND ;
 int HCI_CONN_ENCRYPT ;
 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_CONN_REAUTH_PEND ;
 int HCI_OP_AUTH_REQUESTED ;
 int cpu_to_le16 (int ) ;
 int hci_send_cmd (int ,int ,int,struct hci_cp_auth_requested*) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hci_conn_auth(struct hci_conn *conn, __u8 sec_level, __u8 auth_type)
{
 BT_DBG("hcon %p", conn);

 if (conn->pending_sec_level > sec_level)
  sec_level = conn->pending_sec_level;

 if (sec_level > conn->sec_level)
  conn->pending_sec_level = sec_level;
 else if (test_bit(HCI_CONN_AUTH, &conn->flags))
  return 1;


 auth_type |= (conn->auth_type & 0x01);

 conn->auth_type = auth_type;

 if (!test_and_set_bit(HCI_CONN_AUTH_PEND, &conn->flags)) {
  struct hci_cp_auth_requested cp;

  cp.handle = cpu_to_le16(conn->handle);
  hci_send_cmd(conn->hdev, HCI_OP_AUTH_REQUESTED,
        sizeof(cp), &cp);




  if (test_bit(HCI_CONN_ENCRYPT, &conn->flags))
   set_bit(HCI_CONN_REAUTH_PEND, &conn->flags);
  else
   set_bit(HCI_CONN_ENCRYPT_PEND, &conn->flags);
 }

 return 0;
}
