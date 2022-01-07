
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int * rfkill; int dev; } ;


 int RFKILL_TYPE_NFC ;
 int dev_name (int *) ;
 int device_add (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfc_devlist_generation ;
 int nfc_devlist_mutex ;
 int nfc_genl_device_added (struct nfc_dev*) ;
 int nfc_llcp_register_device (struct nfc_dev*) ;
 int nfc_rfkill_ops ;
 int pr_debug (char*,int ) ;
 int pr_err (char*) ;
 int * rfkill_alloc (int ,int *,int ,int *,struct nfc_dev*) ;
 int rfkill_destroy (int *) ;
 scalar_t__ rfkill_register (int *) ;

int nfc_register_device(struct nfc_dev *dev)
{
 int rc;

 pr_debug("dev_name=%s\n", dev_name(&dev->dev));

 mutex_lock(&nfc_devlist_mutex);
 nfc_devlist_generation++;
 rc = device_add(&dev->dev);
 mutex_unlock(&nfc_devlist_mutex);

 if (rc < 0)
  return rc;

 rc = nfc_llcp_register_device(dev);
 if (rc)
  pr_err("Could not register llcp device\n");

 rc = nfc_genl_device_added(dev);
 if (rc)
  pr_debug("The userspace won't be notified that the device %s was added\n",
    dev_name(&dev->dev));

 dev->rfkill = rfkill_alloc(dev_name(&dev->dev), &dev->dev,
       RFKILL_TYPE_NFC, &nfc_rfkill_ops, dev);
 if (dev->rfkill) {
  if (rfkill_register(dev->rfkill) < 0) {
   rfkill_destroy(dev->rfkill);
   dev->rfkill = ((void*)0);
  }
 }

 return 0;
}
