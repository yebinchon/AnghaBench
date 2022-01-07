
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ type; int auth_type; int remote_auth; } ;


 int HCI_LK_CHANGED_COMBINATION ;
 int HCI_LK_DEBUG_COMBINATION ;
 scalar_t__ LE_LINK ;

__attribute__((used)) static bool hci_persistent_key(struct hci_dev *hdev, struct hci_conn *conn,
          u8 key_type, u8 old_key_type)
{

 if (key_type < 0x03)
  return 1;


 if (key_type == HCI_LK_DEBUG_COMBINATION)
  return 0;


 if (key_type == HCI_LK_CHANGED_COMBINATION && old_key_type == 0xff)
  return 0;


 if (!conn)
  return 1;


 if (conn->type == LE_LINK)
  return 1;


 if (conn->auth_type > 0x01 && conn->remote_auth > 0x01)
  return 1;


 if (conn->auth_type == 0x02 || conn->auth_type == 0x03)
  return 1;


 if (conn->remote_auth == 0x02 || conn->remote_auth == 0x03)
  return 1;



 return 0;
}
