
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct hci_cp_reject_conn_req {int reason; int bdaddr; } ;
typedef int cp ;
typedef int bdaddr_t ;


 int HCI_ERROR_REJ_BAD_ADDR ;
 int HCI_OP_REJECT_CONN_REQ ;
 int bacpy (int *,int *) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_reject_conn_req*) ;

__attribute__((used)) static void hci_reject_conn(struct hci_dev *hdev, bdaddr_t *bdaddr)
{
 struct hci_cp_reject_conn_req cp;

 bacpy(&cp.bdaddr, bdaddr);
 cp.reason = HCI_ERROR_REJ_BAD_ADDR;
 hci_send_cmd(hdev, HCI_OP_REJECT_CONN_REQ, sizeof(cp), &cp);
}
