
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int req_status; int req_result; int name; struct sk_buff* req_skb; int req_wait_q; } ;


 int BT_DBG (char*,int ,...) ;
 int EINTR ;
 int ENODATA ;
 int ERESTARTSYS ;
 struct sk_buff* ERR_PTR (int) ;
 int ETIMEDOUT ;


 int HCI_REQ_PEND ;
 int bt_to_errno (int) ;
 int hci_req_add_ev (struct hci_request*,int ,int ,void const*,int ) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run_skb (struct hci_request*,int ) ;
 int hci_req_sync_complete ;
 int kfree_skb (struct sk_buff*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

struct sk_buff *__hci_cmd_sync_ev(struct hci_dev *hdev, u16 opcode, u32 plen,
      const void *param, u8 event, u32 timeout)
{
 struct hci_request req;
 struct sk_buff *skb;
 int err = 0;

 BT_DBG("%s", hdev->name);

 hci_req_init(&req, hdev);

 hci_req_add_ev(&req, opcode, plen, param, event);

 hdev->req_status = HCI_REQ_PEND;

 err = hci_req_run_skb(&req, hci_req_sync_complete);
 if (err < 0)
  return ERR_PTR(err);

 err = wait_event_interruptible_timeout(hdev->req_wait_q,
   hdev->req_status != HCI_REQ_PEND, timeout);

 if (err == -ERESTARTSYS)
  return ERR_PTR(-EINTR);

 switch (hdev->req_status) {
 case 128:
  err = -bt_to_errno(hdev->req_result);
  break;

 case 129:
  err = -hdev->req_result;
  break;

 default:
  err = -ETIMEDOUT;
  break;
 }

 hdev->req_status = hdev->req_result = 0;
 skb = hdev->req_skb;
 hdev->req_skb = ((void*)0);

 BT_DBG("%s end: err %d", hdev->name, err);

 if (err < 0) {
  kfree_skb(skb);
  return ERR_PTR(err);
 }

 if (!skb)
  return ERR_PTR(-ENODATA);

 return skb;
}
