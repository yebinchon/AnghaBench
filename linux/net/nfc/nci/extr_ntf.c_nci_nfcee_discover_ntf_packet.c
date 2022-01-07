
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nci_nfcee_discover_ntf {int nfcee_id; } ;
struct TYPE_4__ {int id; } ;
struct nci_dev {TYPE_2__ cur_params; TYPE_1__* hci_dev; } ;
struct TYPE_3__ {int nfcee_id; } ;


 int NCI_STATUS_OK ;
 int nci_req_complete (struct nci_dev*,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static void nci_nfcee_discover_ntf_packet(struct nci_dev *ndev,
       struct sk_buff *skb)
{
 u8 status = NCI_STATUS_OK;
 struct nci_nfcee_discover_ntf *nfcee_ntf =
    (struct nci_nfcee_discover_ntf *)skb->data;

 pr_debug("\n");






 ndev->hci_dev->nfcee_id = nfcee_ntf->nfcee_id;
 ndev->cur_params.id = nfcee_ntf->nfcee_id;

 nci_req_complete(ndev, status);
}
