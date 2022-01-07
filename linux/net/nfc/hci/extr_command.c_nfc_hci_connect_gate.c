
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct nfc_hci_dev {size_t* gate2pipe; TYPE_1__* pipes; } ;
struct TYPE_2__ {size_t gate; size_t dest_host; } ;


 int EADDRINUSE ;

 size_t NFC_HCI_ADMIN_PIPE ;
 size_t NFC_HCI_DO_NOT_CREATE_PIPE ;
 size_t NFC_HCI_INVALID_PIPE ;

 size_t NFC_HCI_LINK_MGMT_PIPE ;
 size_t nfc_hci_create_pipe (struct nfc_hci_dev*,size_t,size_t,int*) ;
 scalar_t__ nfc_hci_delete_pipe (struct nfc_hci_dev*,size_t) ;
 int nfc_hci_open_pipe (struct nfc_hci_dev*,size_t) ;
 int pr_debug (char*) ;

int nfc_hci_connect_gate(struct nfc_hci_dev *hdev, u8 dest_host, u8 dest_gate,
    u8 pipe)
{
 bool pipe_created = 0;
 int r;

 pr_debug("\n");

 if (pipe == NFC_HCI_DO_NOT_CREATE_PIPE)
  return 0;

 if (hdev->gate2pipe[dest_gate] != NFC_HCI_INVALID_PIPE)
  return -EADDRINUSE;

 if (pipe != NFC_HCI_INVALID_PIPE)
  goto open_pipe;

 switch (dest_gate) {
 case 128:
  pipe = NFC_HCI_LINK_MGMT_PIPE;
  break;
 case 129:
  pipe = NFC_HCI_ADMIN_PIPE;
  break;
 default:
  pipe = nfc_hci_create_pipe(hdev, dest_host, dest_gate, &r);
  if (pipe == NFC_HCI_INVALID_PIPE)
   return r;
  pipe_created = 1;
  break;
 }

open_pipe:
 r = nfc_hci_open_pipe(hdev, pipe);
 if (r < 0) {
  if (pipe_created)
   if (nfc_hci_delete_pipe(hdev, pipe) < 0) {


   }
  return r;
 }

 hdev->pipes[pipe].gate = dest_gate;
 hdev->pipes[pipe].dest_host = dest_host;
 hdev->gate2pipe[dest_gate] = pipe;

 return 0;
}
