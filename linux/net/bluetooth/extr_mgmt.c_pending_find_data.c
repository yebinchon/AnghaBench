
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mgmt_pending_cmd {int dummy; } ;
struct hci_dev {int dummy; } ;


 int HCI_CHANNEL_CONTROL ;
 struct mgmt_pending_cmd* mgmt_pending_find_data (int ,int ,struct hci_dev*,void const*) ;

__attribute__((used)) static struct mgmt_pending_cmd *pending_find_data(u16 opcode,
        struct hci_dev *hdev,
        const void *data)
{
 return mgmt_pending_find_data(HCI_CHANNEL_CONTROL, opcode, hdev, data);
}
