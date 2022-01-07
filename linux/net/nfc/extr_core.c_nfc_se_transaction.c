
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_evt_transaction {int dummy; } ;
struct nfc_dev {int dev; } ;


 int EPROTO ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int nfc_genl_se_transaction (struct nfc_dev*,int ,struct nfc_evt_transaction*) ;
 int pr_debug (char*,int ) ;

int nfc_se_transaction(struct nfc_dev *dev, u8 se_idx,
         struct nfc_evt_transaction *evt_transaction)
{
 int rc;

 pr_debug("transaction: %x\n", se_idx);

 device_lock(&dev->dev);

 if (!evt_transaction) {
  rc = -EPROTO;
  goto out;
 }

 rc = nfc_genl_se_transaction(dev, se_idx, evt_transaction);
out:
 device_unlock(&dev->dev);
 return rc;
}
