
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_hardware_error {int code; } ;
struct hci_dev {int error_reset; int req_workqueue; int hw_error_code; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void hci_hardware_error_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_hardware_error *ev = (void *) skb->data;

 hdev->hw_error_code = ev->code;

 queue_work(hdev->req_workqueue, &hdev->error_reset);
}
