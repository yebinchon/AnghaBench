
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nfc_se {scalar_t__ state; } ;
struct nfc_dev {int dev; TYPE_1__* ops; int dev_up; } ;
typedef int se_io_cb_t ;
struct TYPE_2__ {int (* se_io ) (struct nfc_dev*,int ,int *,size_t,int ,void*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 scalar_t__ NFC_SE_ENABLED ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 struct nfc_se* nfc_find_se (struct nfc_dev*,int ) ;
 int pr_debug (char*,int ,int ) ;
 int stub1 (struct nfc_dev*,int ,int *,size_t,int ,void*) ;

__attribute__((used)) static int nfc_se_io(struct nfc_dev *dev, u32 se_idx,
       u8 *apdu, size_t apdu_length,
       se_io_cb_t cb, void *cb_context)
{
 struct nfc_se *se;
 int rc;

 pr_debug("%s se index %d\n", dev_name(&dev->dev), se_idx);

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (!dev->dev_up) {
  rc = -ENODEV;
  goto error;
 }

 if (!dev->ops->se_io) {
  rc = -EOPNOTSUPP;
  goto error;
 }

 se = nfc_find_se(dev, se_idx);
 if (!se) {
  rc = -EINVAL;
  goto error;
 }

 if (se->state != NFC_SE_ENABLED) {
  rc = -ENODEV;
  goto error;
 }

 rc = dev->ops->se_io(dev, se_idx, apdu,
   apdu_length, cb, cb_context);

error:
 device_unlock(&dev->dev);
 return rc;
}
