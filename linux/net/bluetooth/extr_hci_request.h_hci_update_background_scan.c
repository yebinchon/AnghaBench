
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int bg_scan_update; int req_workqueue; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static inline void hci_update_background_scan(struct hci_dev *hdev)
{
 queue_work(hdev->req_workqueue, &hdev->bg_scan_update);
}
