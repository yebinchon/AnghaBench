
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int req_status; int req_result; int req_completion; } ;
typedef int __u32 ;


 long ETIMEDOUT ;


 int NCI_REQ_PEND ;
 int nci_to_errno (int) ;
 int pr_debug (char*,long) ;
 int pr_err (char*,long) ;
 int reinit_completion (int *) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int __nci_request(struct nci_dev *ndev,
    void (*req)(struct nci_dev *ndev, unsigned long opt),
    unsigned long opt, __u32 timeout)
{
 int rc = 0;
 long completion_rc;

 ndev->req_status = NCI_REQ_PEND;

 reinit_completion(&ndev->req_completion);
 req(ndev, opt);
 completion_rc =
  wait_for_completion_interruptible_timeout(&ndev->req_completion,
         timeout);

 pr_debug("wait_for_completion return %ld\n", completion_rc);

 if (completion_rc > 0) {
  switch (ndev->req_status) {
  case 128:
   rc = nci_to_errno(ndev->req_result);
   break;

  case 129:
   rc = -ndev->req_result;
   break;

  default:
   rc = -ETIMEDOUT;
   break;
  }
 } else {
  pr_err("wait_for_completion_interruptible_timeout failed %ld\n",
         completion_rc);

  rc = ((completion_rc == 0) ? (-ETIMEDOUT) : (completion_rc));
 }

 ndev->req_status = ndev->req_result = 0;

 return rc;
}
