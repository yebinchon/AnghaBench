
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_conn {int pin_length; int key_type; void* pending_sec_level; } ;


 void* BT_SECURITY_FIPS ;
 void* BT_SECURITY_HIGH ;
 void* BT_SECURITY_MEDIUM ;


 int HCI_LK_CHANGED_COMBINATION ;







__attribute__((used)) static void conn_set_key(struct hci_conn *conn, u8 key_type, u8 pin_len)
{
 if (key_type == HCI_LK_CHANGED_COMBINATION)
  return;

 conn->pin_length = pin_len;
 conn->key_type = key_type;

 switch (key_type) {
 case 131:
 case 130:
 case 132:
  return;
 case 133:
  if (pin_len == 16)
   conn->pending_sec_level = BT_SECURITY_HIGH;
  else
   conn->pending_sec_level = BT_SECURITY_MEDIUM;
  break;
 case 129:
 case 128:
  conn->pending_sec_level = BT_SECURITY_MEDIUM;
  break;
 case 135:
  conn->pending_sec_level = BT_SECURITY_HIGH;
  break;
 case 134:
  conn->pending_sec_level = BT_SECURITY_FIPS;
  break;
 }
}
