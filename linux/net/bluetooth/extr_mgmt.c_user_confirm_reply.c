
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_user_confirm_reply {int addr; } ;
struct hci_dev {int id; } ;


 int BT_DBG (char*) ;
 int HCI_OP_USER_CONFIRM_REPLY ;
 int MGMT_OP_USER_CONFIRM_REPLY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 int user_pairing_resp (struct sock*,struct hci_dev*,int *,int ,int ,int ) ;

__attribute__((used)) static int user_confirm_reply(struct sock *sk, struct hci_dev *hdev, void *data,
         u16 len)
{
 struct mgmt_cp_user_confirm_reply *cp = data;

 BT_DBG("");

 if (len != sizeof(*cp))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_USER_CONFIRM_REPLY,
           MGMT_STATUS_INVALID_PARAMS);

 return user_pairing_resp(sk, hdev, &cp->addr,
     MGMT_OP_USER_CONFIRM_REPLY,
     HCI_OP_USER_CONFIRM_REPLY, 0);
}
