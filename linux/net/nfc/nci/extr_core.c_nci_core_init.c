
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;


 int NCI_INIT_TIMEOUT ;
 int __nci_request (struct nci_dev*,int ,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int nci_init_req ;

int nci_core_init(struct nci_dev *ndev)
{
 return __nci_request(ndev, nci_init_req, 0,
        msecs_to_jiffies(NCI_INIT_TIMEOUT));
}
