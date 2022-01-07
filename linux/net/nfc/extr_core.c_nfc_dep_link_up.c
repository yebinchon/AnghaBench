
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nfc_target {int dummy; } ;
struct nfc_dev {int dep_link_up; int dev; int rf_mode; struct nfc_target* active_target; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dep_link_up ) (struct nfc_dev*,struct nfc_target*,int ,int *,size_t) ;} ;


 int EALREADY ;
 int EINVAL ;
 int ENODEV ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 size_t NFC_MAX_GT_LEN ;
 int NFC_RF_INITIATOR ;
 int dev_name (int *) ;
 int device_is_registered (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 struct nfc_target* nfc_find_target (struct nfc_dev*,int) ;
 int * nfc_llcp_general_bytes (struct nfc_dev*,size_t*) ;
 int pr_debug (char*,int ,int ) ;
 int stub1 (struct nfc_dev*,struct nfc_target*,int ,int *,size_t) ;

int nfc_dep_link_up(struct nfc_dev *dev, int target_index, u8 comm_mode)
{
 int rc = 0;
 u8 *gb;
 size_t gb_len;
 struct nfc_target *target;

 pr_debug("dev_name=%s comm %d\n", dev_name(&dev->dev), comm_mode);

 if (!dev->ops->dep_link_up)
  return -EOPNOTSUPP;

 device_lock(&dev->dev);

 if (!device_is_registered(&dev->dev)) {
  rc = -ENODEV;
  goto error;
 }

 if (dev->dep_link_up == 1) {
  rc = -EALREADY;
  goto error;
 }

 gb = nfc_llcp_general_bytes(dev, &gb_len);
 if (gb_len > NFC_MAX_GT_LEN) {
  rc = -EINVAL;
  goto error;
 }

 target = nfc_find_target(dev, target_index);
 if (target == ((void*)0)) {
  rc = -ENOTCONN;
  goto error;
 }

 rc = dev->ops->dep_link_up(dev, target, comm_mode, gb, gb_len);
 if (!rc) {
  dev->active_target = target;
  dev->rf_mode = NFC_RF_INITIATOR;
 }

error:
 device_unlock(&dev->dev);
 return rc;
}
