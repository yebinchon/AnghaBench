
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {scalar_t__ req_status; int req_result; int req_completion; } ;


 scalar_t__ NCI_REQ_CANCELED ;
 scalar_t__ NCI_REQ_PEND ;
 int complete (int *) ;

__attribute__((used)) static void nci_req_cancel(struct nci_dev *ndev, int err)
{
 if (ndev->req_status == NCI_REQ_PEND) {
  ndev->req_result = err;
  ndev->req_status = NCI_REQ_CANCELED;
  complete(&ndev->req_completion);
 }
}
