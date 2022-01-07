
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nci_dev {int dummy; } ;


 int NCI_CMD_TIMEOUT ;
 int __nci_request (struct nci_dev*,int ,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int nci_nfcee_discover_req ;

int nci_nfcee_discover(struct nci_dev *ndev, u8 action)
{
 return __nci_request(ndev, nci_nfcee_discover_req, action,
    msecs_to_jiffies(NCI_CMD_TIMEOUT));
}
