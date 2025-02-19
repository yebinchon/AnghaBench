
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_5__ {int session_id; TYPE_3__* gates; int gate_count; } ;
struct nfc_hci_dev {TYPE_2__ init_data; TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ gate; int pipe; } ;
struct TYPE_4__ {int (* load_session ) (struct nfc_hci_dev*) ;} ;


 int EPROTO ;
 scalar_t__ NFC_HCI_ADMIN_GATE ;
 int NFC_HCI_ADMIN_SESSION_IDENTITY ;
 int NFC_HCI_HOST_CONTROLLER_ID ;
 int hci_dev_connect_gates (struct nfc_hci_dev*,int ,TYPE_3__*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int nfc_hci_connect_gate (struct nfc_hci_dev*,int ,scalar_t__,int ) ;
 int nfc_hci_disconnect_all_gates (struct nfc_hci_dev*) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,scalar_t__,int ,struct sk_buff**) ;
 int nfc_hci_set_param (struct nfc_hci_dev*,scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;
 int stub1 (struct nfc_hci_dev*) ;

__attribute__((used)) static int hci_dev_session_init(struct nfc_hci_dev *hdev)
{
 struct sk_buff *skb = ((void*)0);
 int r;

 if (hdev->init_data.gates[0].gate != NFC_HCI_ADMIN_GATE)
  return -EPROTO;

 r = nfc_hci_connect_gate(hdev, NFC_HCI_HOST_CONTROLLER_ID,
     hdev->init_data.gates[0].gate,
     hdev->init_data.gates[0].pipe);
 if (r < 0)
  goto exit;

 r = nfc_hci_get_param(hdev, NFC_HCI_ADMIN_GATE,
         NFC_HCI_ADMIN_SESSION_IDENTITY, &skb);
 if (r < 0)
  goto disconnect_all;

 if (skb->len && skb->len == strlen(hdev->init_data.session_id) &&
  (memcmp(hdev->init_data.session_id, skb->data,
      skb->len) == 0) && hdev->ops->load_session) {


  r = hdev->ops->load_session(hdev);

  if (r < 0)
   goto disconnect_all;
 } else {

  r = nfc_hci_disconnect_all_gates(hdev);
  if (r < 0)
   goto exit;

  r = hci_dev_connect_gates(hdev, hdev->init_data.gate_count,
       hdev->init_data.gates);
  if (r < 0)
   goto disconnect_all;

  r = nfc_hci_set_param(hdev, NFC_HCI_ADMIN_GATE,
    NFC_HCI_ADMIN_SESSION_IDENTITY,
    hdev->init_data.session_id,
    strlen(hdev->init_data.session_id));
 }
 if (r == 0)
  goto exit;

disconnect_all:
 nfc_hci_disconnect_all_gates(hdev);

exit:
 kfree_skb(skb);

 return r;
}
