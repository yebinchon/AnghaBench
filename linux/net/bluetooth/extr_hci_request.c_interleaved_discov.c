
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_request {TYPE_1__* hdev; } ;
struct TYPE_2__ {int name; } ;


 int BT_DBG (char*,int ) ;
 int DISCOV_BREDR_INQUIRY_LEN ;
 int active_scan (struct hci_request*,unsigned long) ;
 int bredr_inquiry (struct hci_request*,int ) ;

__attribute__((used)) static int interleaved_discov(struct hci_request *req, unsigned long opt)
{
 int err;

 BT_DBG("%s", req->hdev->name);

 err = active_scan(req, opt);
 if (err)
  return err;

 return bredr_inquiry(req, DISCOV_BREDR_INQUIRY_LEN);
}
