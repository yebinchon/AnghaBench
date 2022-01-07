
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hci_dev {int dummy; } ;


 int BT_DBG (char*,int ) ;
 int MGMT_OP_ADD_UUID ;
 int mgmt_class_complete (struct hci_dev*,int ,int ) ;

__attribute__((used)) static void add_uuid_complete(struct hci_dev *hdev, u8 status, u16 opcode)
{
 BT_DBG("status 0x%02x", status);

 mgmt_class_complete(hdev, MGMT_OP_ADD_UUID, status);
}
