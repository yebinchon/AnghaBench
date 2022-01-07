
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dummy; } ;


 int nfc_targets_found (struct nfc_dev*,int *,int ) ;

inline void nfc_driver_failure(struct nfc_dev *dev, int err)
{
 nfc_targets_found(dev, ((void*)0), 0);
}
