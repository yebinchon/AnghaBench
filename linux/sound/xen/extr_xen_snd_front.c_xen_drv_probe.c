
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int dev; } ;
struct xen_snd_front_info {struct xenbus_device* xb_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XenbusStateInitialising ;
 int dev_set_drvdata (int *,struct xen_snd_front_info*) ;
 struct xen_snd_front_info* devm_kzalloc (int *,int,int ) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;

__attribute__((used)) static int xen_drv_probe(struct xenbus_device *xb_dev,
    const struct xenbus_device_id *id)
{
 struct xen_snd_front_info *front_info;

 front_info = devm_kzalloc(&xb_dev->dev,
      sizeof(*front_info), GFP_KERNEL);
 if (!front_info)
  return -ENOMEM;

 front_info->xb_dev = xb_dev;
 dev_set_drvdata(&xb_dev->dev, front_info);

 return xenbus_switch_state(xb_dev, XenbusStateInitialising);
}
