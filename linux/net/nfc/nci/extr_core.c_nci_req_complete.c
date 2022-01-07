
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {scalar_t__ req_status; int req_result; int req_completion; } ;


 scalar_t__ NCI_REQ_DONE ;
 scalar_t__ NCI_REQ_PEND ;
 int complete (int *) ;

void nci_req_complete(struct nci_dev *ndev, int result)
{
 if (ndev->req_status == NCI_REQ_PEND) {
  ndev->req_result = result;
  ndev->req_status = NCI_REQ_DONE;
  complete(&ndev->req_completion);
 }
}
