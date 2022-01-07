
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nci_dev {int nci_ver; } ;
struct nci_core_reset_rsp {scalar_t__ status; int config_status; int nci_ver; } ;


 scalar_t__ NCI_STATUS_OK ;
 int nci_req_complete (struct nci_dev*,scalar_t__) ;
 int pr_debug (char*,scalar_t__,...) ;

__attribute__((used)) static void nci_core_reset_rsp_packet(struct nci_dev *ndev, struct sk_buff *skb)
{
 struct nci_core_reset_rsp *rsp = (void *) skb->data;

 pr_debug("status 0x%x\n", rsp->status);

 if (rsp->status == NCI_STATUS_OK) {
  ndev->nci_ver = rsp->nci_ver;
  pr_debug("nci_ver 0x%x, config_status 0x%x\n",
    rsp->nci_ver, rsp->config_status);
 }

 nci_req_complete(ndev, rsp->status);
}
