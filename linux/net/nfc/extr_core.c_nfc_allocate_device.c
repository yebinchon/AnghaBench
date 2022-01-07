
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nfc_ops {scalar_t__ check_presence; int im_transceive; int deactivate_target; int activate_target; int stop_poll; int start_poll; } ;
struct TYPE_3__ {int * class; } ;
struct nfc_dev {int idx; int tx_headroom; int tx_tailroom; int targets_generation; int check_pres_work; int check_pres_timer; int rf_mode; int genl_data; int secure_elements; scalar_t__ supported_protocols; struct nfc_ops* ops; TYPE_1__ dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NFC_RF_NONE ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct nfc_dev*) ;
 struct nfc_dev* kzalloc (int,int ) ;
 int nfc_check_pres_timeout ;
 int nfc_check_pres_work ;
 int nfc_class ;
 int nfc_genl_data_init (int *) ;
 int nfc_index_ida ;
 int timer_setup (int *,int ,int ) ;

struct nfc_dev *nfc_allocate_device(struct nfc_ops *ops,
        u32 supported_protocols,
        int tx_headroom, int tx_tailroom)
{
 struct nfc_dev *dev;
 int rc;

 if (!ops->start_poll || !ops->stop_poll || !ops->activate_target ||
     !ops->deactivate_target || !ops->im_transceive)
  return ((void*)0);

 if (!supported_protocols)
  return ((void*)0);

 dev = kzalloc(sizeof(struct nfc_dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 rc = ida_simple_get(&nfc_index_ida, 0, 0, GFP_KERNEL);
 if (rc < 0)
  goto err_free_dev;
 dev->idx = rc;

 dev->dev.class = &nfc_class;
 dev_set_name(&dev->dev, "nfc%d", dev->idx);
 device_initialize(&dev->dev);

 dev->ops = ops;
 dev->supported_protocols = supported_protocols;
 dev->tx_headroom = tx_headroom;
 dev->tx_tailroom = tx_tailroom;
 INIT_LIST_HEAD(&dev->secure_elements);

 nfc_genl_data_init(&dev->genl_data);

 dev->rf_mode = NFC_RF_NONE;


 dev->targets_generation = 1;

 if (ops->check_presence) {
  timer_setup(&dev->check_pres_timer, nfc_check_pres_timeout, 0);
  INIT_WORK(&dev->check_pres_work, nfc_check_pres_work);
 }

 return dev;

err_free_dev:
 kfree(dev);

 return ((void*)0);
}
