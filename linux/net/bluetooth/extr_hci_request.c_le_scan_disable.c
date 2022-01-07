
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {int dummy; } ;


 int hci_req_add_le_scan_disable (struct hci_request*) ;

__attribute__((used)) static int le_scan_disable(struct hci_request *req, unsigned long opt)
{
 hci_req_add_le_scan_disable(req);
 return 0;
}
