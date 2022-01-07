
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nci_dev {TYPE_1__* ops; } ;
typedef int __u8 ;
typedef int __u32 ;
struct TYPE_2__ {int (* get_rfprotocol ) (struct nci_dev*,int ) ;} ;


 int stub1 (struct nci_dev*,int ) ;

__attribute__((used)) static __u32 nci_get_prop_rf_protocol(struct nci_dev *ndev, __u8 rf_protocol)
{
 if (ndev->ops->get_rfprotocol)
  return ndev->ops->get_rfprotocol(ndev, rf_protocol);
 return 0;
}
