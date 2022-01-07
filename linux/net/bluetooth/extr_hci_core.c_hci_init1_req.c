
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dev_type; int quirks; int name; } ;


 int BT_DBG (char*,int ,unsigned long) ;


 int HCI_QUIRK_RESET_ON_CLOSE ;
 int amp_init1 (struct hci_request*) ;
 int bredr_init (struct hci_request*) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int hci_reset_req (struct hci_request*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hci_init1_req(struct hci_request *req, unsigned long opt)
{
 struct hci_dev *hdev = req->hdev;

 BT_DBG("%s %ld", hdev->name, opt);


 if (!test_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks))
  hci_reset_req(req, 0);

 switch (hdev->dev_type) {
 case 128:
  bredr_init(req);
  break;
 case 129:
  amp_init1(req);
  break;
 default:
  bt_dev_err(hdev, "Unknown device type %d", hdev->dev_type);
  break;
 }

 return 0;
}
