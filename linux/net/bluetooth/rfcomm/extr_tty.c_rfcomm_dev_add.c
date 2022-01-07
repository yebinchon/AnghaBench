
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int dummy; } ;
struct rfcomm_dev_req {int channel; int dev_id; } ;
struct rfcomm_dev {int id; struct rfcomm_dev* tty_dev; int port; } ;
struct device {int id; struct device* tty_dev; int port; } ;


 int BT_DBG (char*,int ,int ) ;
 int BT_ERR (char*) ;
 scalar_t__ IS_ERR (struct rfcomm_dev*) ;
 int PTR_ERR (struct rfcomm_dev*) ;
 struct rfcomm_dev* __rfcomm_dev_add (struct rfcomm_dev_req*,struct rfcomm_dlc*) ;
 int dev_attr_address ;
 int dev_attr_channel ;
 int dev_set_drvdata (struct rfcomm_dev*,struct rfcomm_dev*) ;
 scalar_t__ device_create_file (struct rfcomm_dev*,int *) ;
 int rfcomm_dlc_put (struct rfcomm_dlc*) ;
 int rfcomm_reparent_device (struct rfcomm_dev*) ;
 int rfcomm_tty_driver ;
 int tty_port_put (int *) ;
 struct rfcomm_dev* tty_port_register_device (int *,int ,int,int *) ;

__attribute__((used)) static int rfcomm_dev_add(struct rfcomm_dev_req *req, struct rfcomm_dlc *dlc)
{
 struct rfcomm_dev *dev;
 struct device *tty;

 BT_DBG("id %d channel %d", req->dev_id, req->channel);

 dev = __rfcomm_dev_add(req, dlc);
 if (IS_ERR(dev)) {
  rfcomm_dlc_put(dlc);
  return PTR_ERR(dev);
 }

 tty = tty_port_register_device(&dev->port, rfcomm_tty_driver,
   dev->id, ((void*)0));
 if (IS_ERR(tty)) {
  tty_port_put(&dev->port);
  return PTR_ERR(tty);
 }

 dev->tty_dev = tty;
 rfcomm_reparent_device(dev);
 dev_set_drvdata(dev->tty_dev, dev);

 if (device_create_file(dev->tty_dev, &dev_attr_address) < 0)
  BT_ERR("Failed to create address attribute");

 if (device_create_file(dev->tty_dev, &dev_attr_channel) < 0)
  BT_ERR("Failed to create channel attribute");

 return dev->id;
}
