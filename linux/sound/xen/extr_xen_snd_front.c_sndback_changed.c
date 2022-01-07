
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int state; int dev; } ;
struct xen_snd_front_info {int dummy; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
 int dev_dbg (int *,char*,int ,int ) ;
 struct xen_snd_front_info* dev_get_drvdata (int *) ;
 int sndback_connect (struct xen_snd_front_info*) ;
 int sndback_disconnect (struct xen_snd_front_info*) ;
 int sndback_initwait (struct xen_snd_front_info*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;
 int xenbus_strstate (int) ;
 int xenbus_switch_state (struct xenbus_device*,int const) ;

__attribute__((used)) static void sndback_changed(struct xenbus_device *xb_dev,
       enum xenbus_state backend_state)
{
 struct xen_snd_front_info *front_info = dev_get_drvdata(&xb_dev->dev);
 int ret;

 dev_dbg(&xb_dev->dev, "Backend state is %s, front is %s\n",
  xenbus_strstate(backend_state),
  xenbus_strstate(xb_dev->state));

 switch (backend_state) {
 case 129:

 case 130:

 case 132:

  break;

 case 131:

  sndback_disconnect(front_info);
  break;

 case 133:

  sndback_disconnect(front_info);

  ret = sndback_initwait(front_info);
  if (ret < 0)
   xenbus_dev_fatal(xb_dev, ret, "initializing frontend");
  else
   xenbus_switch_state(xb_dev, 132);
  break;

 case 134:
  if (xb_dev->state != 132)
   break;

  ret = sndback_connect(front_info);
  if (ret < 0)
   xenbus_dev_fatal(xb_dev, ret, "initializing frontend");
  else
   xenbus_switch_state(xb_dev, 134);
  break;

 case 135:





  break;

 case 128:

 case 136:
  if (xb_dev->state == 136)
   break;

  sndback_disconnect(front_info);
  break;
 }
}
