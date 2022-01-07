
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ,int ) ;

__attribute__((used)) static void adv_enable_complete(struct hci_dev *hdev, u8 status, u16 opcode)
{
 BT_DBG("%s status %u", hdev->name, status);
}
