
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dummy; } ;
typedef int bdaddr_t ;


 int MGMT_OP_USER_CONFIRM_REPLY ;
 int user_pairing_resp_complete (struct hci_dev*,int *,int ,int ,int ,int ) ;

int mgmt_user_confirm_reply_complete(struct hci_dev *hdev, bdaddr_t *bdaddr,
         u8 link_type, u8 addr_type, u8 status)
{
 return user_pairing_resp_complete(hdev, bdaddr, link_type, addr_type,
       status, MGMT_OP_USER_CONFIRM_REPLY);
}
