
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_conn {scalar_t__ role; int flags; } ;


 int HCI_CONN_AUTH ;
 int HCI_CONN_ENCRYPT ;
 int HCI_CONN_FIPS ;
 int HCI_CONN_SECURE ;
 int HCI_LM_AUTH ;
 int HCI_LM_ENCRYPT ;
 int HCI_LM_FIPS ;
 int HCI_LM_MASTER ;
 int HCI_LM_SECURE ;
 scalar_t__ HCI_ROLE_MASTER ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 get_link_mode(struct hci_conn *conn)
{
 u32 link_mode = 0;

 if (conn->role == HCI_ROLE_MASTER)
  link_mode |= HCI_LM_MASTER;

 if (test_bit(HCI_CONN_ENCRYPT, &conn->flags))
  link_mode |= HCI_LM_ENCRYPT;

 if (test_bit(HCI_CONN_AUTH, &conn->flags))
  link_mode |= HCI_LM_AUTH;

 if (test_bit(HCI_CONN_SECURE, &conn->flags))
  link_mode |= HCI_LM_SECURE;

 if (test_bit(HCI_CONN_FIPS, &conn->flags))
  link_mode |= HCI_LM_FIPS;

 return link_mode;
}
