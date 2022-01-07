
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_request {int dummy; } ;
struct hci_dev {int dummy; } ;


 int __hci_req_update_adv_data (struct hci_request*,int ) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int *) ;

int hci_req_update_adv_data(struct hci_dev *hdev, u8 instance)
{
 struct hci_request req;

 hci_req_init(&req, hdev);
 __hci_req_update_adv_data(&req, instance);

 return hci_req_run(&req, ((void*)0));
}
