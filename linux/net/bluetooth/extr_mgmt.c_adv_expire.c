
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_request {int dummy; } ;
struct hci_dev {int cur_adv_instance; } ;
struct adv_info {int flags; int instance; } ;


 int __hci_req_schedule_adv_instance (struct hci_request*,int ,int) ;
 int cancel_adv_timeout (struct hci_dev*) ;
 struct adv_info* hci_find_adv_instance (struct hci_dev*,int ) ;
 struct adv_info* hci_get_next_instance (struct hci_dev*,int ) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int *) ;

__attribute__((used)) static void adv_expire(struct hci_dev *hdev, u32 flags)
{
 struct adv_info *adv_instance;
 struct hci_request req;
 int err;

 adv_instance = hci_find_adv_instance(hdev, hdev->cur_adv_instance);
 if (!adv_instance)
  return;


 if (!(adv_instance->flags & flags))
  return;

 cancel_adv_timeout(hdev);

 adv_instance = hci_get_next_instance(hdev, adv_instance->instance);
 if (!adv_instance)
  return;

 hci_req_init(&req, hdev);
 err = __hci_req_schedule_adv_instance(&req, adv_instance->instance,
           1);
 if (err)
  return;

 hci_req_run(&req, ((void*)0));
}
