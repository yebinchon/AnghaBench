
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_user_passkey_reply {int passkey; int addr; } ;
struct hci_dev {int dummy; } ;


 int BT_DBG (char*) ;
 int HCI_OP_USER_PASSKEY_REPLY ;
 int MGMT_OP_USER_PASSKEY_REPLY ;
 int user_pairing_resp (struct sock*,struct hci_dev*,int *,int ,int ,int ) ;

__attribute__((used)) static int user_passkey_reply(struct sock *sk, struct hci_dev *hdev, void *data,
         u16 len)
{
 struct mgmt_cp_user_passkey_reply *cp = data;

 BT_DBG("");

 return user_pairing_resp(sk, hdev, &cp->addr,
     MGMT_OP_USER_PASSKEY_REPLY,
     HCI_OP_USER_PASSKEY_REPLY, cp->passkey);
}
