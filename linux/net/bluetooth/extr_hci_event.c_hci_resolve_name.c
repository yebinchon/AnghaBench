
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clock_offset; int pscan_mode; int pscan_rep_mode; int bdaddr; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_remote_name_req {int clock_offset; int pscan_mode; int pscan_rep_mode; int bdaddr; } ;
typedef int cp ;


 int HCI_OP_REMOTE_NAME_REQ ;
 int bacpy (int *,int *) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_remote_name_req*) ;
 int memset (struct hci_cp_remote_name_req*,int ,int) ;

__attribute__((used)) static int hci_resolve_name(struct hci_dev *hdev,
       struct inquiry_entry *e)
{
 struct hci_cp_remote_name_req cp;

 memset(&cp, 0, sizeof(cp));

 bacpy(&cp.bdaddr, &e->data.bdaddr);
 cp.pscan_rep_mode = e->data.pscan_rep_mode;
 cp.pscan_mode = e->data.pscan_mode;
 cp.clock_offset = e->data.clock_offset;

 return hci_send_cmd(hdev, HCI_OP_REMOTE_NAME_REQ, sizeof(cp), &cp);
}
