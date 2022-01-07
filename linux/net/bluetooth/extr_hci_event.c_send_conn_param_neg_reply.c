
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hci_dev {int dummy; } ;
struct hci_cp_le_conn_param_req_neg_reply {int reason; int handle; } ;
typedef int cp ;


 int HCI_OP_LE_CONN_PARAM_REQ_NEG_REPLY ;
 int cpu_to_le16 (int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_le_conn_param_req_neg_reply*) ;

__attribute__((used)) static void send_conn_param_neg_reply(struct hci_dev *hdev, u16 handle,
          u8 reason)
{
 struct hci_cp_le_conn_param_req_neg_reply cp;

 cp.handle = cpu_to_le16(handle);
 cp.reason = reason;

 hci_send_cmd(hdev, HCI_OP_LE_CONN_PARAM_REQ_NEG_REPLY, sizeof(cp),
       &cp);
}
