
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ le_num_slave; } ;
struct hci_dev {int* le_states; TYPE_1__ conn_hash; } ;


 int LE_LINK ;
 scalar_t__ hci_conn_num (struct hci_dev*,int ) ;

__attribute__((used)) static bool is_advertising_allowed(struct hci_dev *hdev, bool connectable)
{

 if (hci_conn_num(hdev, LE_LINK) == 0)
  return 1;


 if (hdev->conn_hash.le_num_slave > 0) {

  if (!connectable && !(hdev->le_states[2] & 0x10))
   return 0;




  if (connectable && (!(hdev->le_states[4] & 0x40) ||
        !(hdev->le_states[2] & 0x20)))
   return 0;
 }


 if (hci_conn_num(hdev, LE_LINK) != hdev->conn_hash.le_num_slave) {

  if (!connectable && !(hdev->le_states[2] & 0x02))
   return 0;




  if (connectable && (!(hdev->le_states[4] & 0x08) ||
        !(hdev->le_states[2] & 0x08)))
   return 0;
 }

 return 1;
}
