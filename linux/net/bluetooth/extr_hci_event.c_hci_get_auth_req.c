
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_conn {int remote_auth; int auth_type; scalar_t__ remote_cap; scalar_t__ io_capability; } ;


 int HCI_AT_NO_BONDING ;
 int HCI_AT_NO_BONDING_MITM ;
 scalar_t__ HCI_IO_NO_INPUT_OUTPUT ;

__attribute__((used)) static u8 hci_get_auth_req(struct hci_conn *conn)
{

 if (conn->remote_auth == HCI_AT_NO_BONDING ||
     conn->remote_auth == HCI_AT_NO_BONDING_MITM)
  return conn->remote_auth | (conn->auth_type & 0x01);




 if (conn->remote_cap != HCI_IO_NO_INPUT_OUTPUT &&
     conn->io_capability != HCI_IO_NO_INPUT_OUTPUT)
  return conn->remote_auth | 0x01;


 return (conn->remote_auth & ~0x01) | (conn->auth_type & 0x01);
}
