
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_dev {int dev; } ;


 int device_lock (int *) ;
 int device_unlock (int *) ;
 int nfc_genl_se_connectivity (struct nfc_dev*,int ) ;
 int pr_debug (char*,int ) ;

int nfc_se_connectivity(struct nfc_dev *dev, u8 se_idx)
{
 int rc;

 pr_debug("connectivity: %x\n", se_idx);

 device_lock(&dev->dev);
 rc = nfc_genl_se_connectivity(dev, se_idx);
 device_unlock(&dev->dev);
 return rc;
}
