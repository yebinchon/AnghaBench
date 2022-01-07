
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dev_name; } ;
struct hci_cp_write_local_name {int name; } ;
typedef int cp ;


 int HCI_OP_WRITE_LOCAL_NAME ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_write_local_name*) ;
 int memcpy (int ,int ,int) ;

void __hci_req_update_name(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 struct hci_cp_write_local_name cp;

 memcpy(cp.name, hdev->dev_name, sizeof(cp.name));

 hci_req_add(req, HCI_OP_WRITE_LOCAL_NAME, sizeof(cp), &cp);
}
