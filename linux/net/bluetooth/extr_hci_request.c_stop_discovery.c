
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int hdev; } ;


 int hci_dev_lock (int ) ;
 int hci_dev_unlock (int ) ;
 int hci_req_stop_discovery (struct hci_request*) ;

__attribute__((used)) static int stop_discovery(struct hci_request *req, unsigned long opt)
{
 hci_dev_lock(req->hdev);
 hci_req_stop_discovery(req);
 hci_dev_unlock(req->hdev);

 return 0;
}
