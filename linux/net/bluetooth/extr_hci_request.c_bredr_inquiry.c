
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct hci_request {TYPE_2__* hdev; } ;
struct hci_cp_inquiry {int length; int lap; } ;
typedef int cp ;
struct TYPE_5__ {scalar_t__ limited; } ;
struct TYPE_6__ {TYPE_1__ discovery; int name; } ;


 int BT_DBG (char*,int ) ;
 int HCI_OP_INQUIRY ;
 int hci_dev_lock (TYPE_2__*) ;
 int hci_dev_unlock (TYPE_2__*) ;
 int hci_inquiry_cache_flush (TYPE_2__*) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_inquiry*) ;
 int memcpy (int *,int const*,int) ;
 int memset (struct hci_cp_inquiry*,int ,int) ;

__attribute__((used)) static int bredr_inquiry(struct hci_request *req, unsigned long opt)
{
 u8 length = opt;
 const u8 giac[3] = { 0x33, 0x8b, 0x9e };
 const u8 liac[3] = { 0x00, 0x8b, 0x9e };
 struct hci_cp_inquiry cp;

 BT_DBG("%s", req->hdev->name);

 hci_dev_lock(req->hdev);
 hci_inquiry_cache_flush(req->hdev);
 hci_dev_unlock(req->hdev);

 memset(&cp, 0, sizeof(cp));

 if (req->hdev->discovery.limited)
  memcpy(&cp.lap, liac, sizeof(cp.lap));
 else
  memcpy(&cp.lap, giac, sizeof(cp.lap));

 cp.length = length;

 hci_req_add(req, HCI_OP_INQUIRY, sizeof(cp), &cp);

 return 0;
}
