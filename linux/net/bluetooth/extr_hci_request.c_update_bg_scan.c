
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int hdev; } ;


 int __hci_update_background_scan (struct hci_request*) ;
 int hci_dev_lock (int ) ;
 int hci_dev_unlock (int ) ;

__attribute__((used)) static int update_bg_scan(struct hci_request *req, unsigned long opt)
{
 hci_dev_lock(req->hdev);
 __hci_update_background_scan(req);
 hci_dev_unlock(req->hdev);
 return 0;
}
