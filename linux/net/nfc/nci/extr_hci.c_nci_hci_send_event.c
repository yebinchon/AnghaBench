
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct nci_dev {TYPE_1__* hci_dev; } ;
struct TYPE_2__ {size_t* gate2pipe; } ;


 int EADDRNOTAVAIL ;
 int NCI_HCI_HCP_EVENT ;
 size_t NCI_HCI_INVALID_PIPE ;
 int NCI_HCP_HEADER (int ,size_t) ;
 int nci_hci_send_data (struct nci_dev*,size_t,int ,size_t const*,size_t) ;

int nci_hci_send_event(struct nci_dev *ndev, u8 gate, u8 event,
         const u8 *param, size_t param_len)
{
 u8 pipe = ndev->hci_dev->gate2pipe[gate];

 if (pipe == NCI_HCI_INVALID_PIPE)
  return -EADDRNOTAVAIL;

 return nci_hci_send_data(ndev, pipe,
   NCI_HCP_HEADER(NCI_HCI_HCP_EVENT, event),
   param, param_len);
}
