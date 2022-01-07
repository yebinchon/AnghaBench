
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ,int ) ;
 int a2mp_send_getinfo_rsp (struct hci_dev*) ;

__attribute__((used)) static void read_local_amp_info_complete(struct hci_dev *hdev, u8 status,
      u16 opcode)
{
 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 a2mp_send_getinfo_rsp(hdev);
}
