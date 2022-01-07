
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int req_lock; int flags; } ;
typedef int __u32 ;


 int ENETDOWN ;
 int NCI_UP ;
 int __nci_request (struct nci_dev*,void (*) (struct nci_dev*,unsigned long),unsigned long,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

inline int nci_request(struct nci_dev *ndev,
         void (*req)(struct nci_dev *ndev,
       unsigned long opt),
         unsigned long opt, __u32 timeout)
{
 int rc;

 if (!test_bit(NCI_UP, &ndev->flags))
  return -ENETDOWN;


 mutex_lock(&ndev->req_lock);
 rc = __nci_request(ndev, req, opt, timeout);
 mutex_unlock(&ndev->req_lock);

 return rc;
}
