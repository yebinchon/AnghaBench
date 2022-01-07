
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ax25_fwd_struct {int port_to; int port_from; } ;
struct TYPE_3__ {int * forward; int * dev; } ;
typedef TYPE_1__ ax25_dev ;


 int EINVAL ;


 TYPE_1__* ax25_addr_ax25dev (int *) ;

int ax25_fwd_ioctl(unsigned int cmd, struct ax25_fwd_struct *fwd)
{
 ax25_dev *ax25_dev, *fwd_dev;

 if ((ax25_dev = ax25_addr_ax25dev(&fwd->port_from)) == ((void*)0))
  return -EINVAL;

 switch (cmd) {
 case 129:
  if ((fwd_dev = ax25_addr_ax25dev(&fwd->port_to)) == ((void*)0))
   return -EINVAL;
  if (ax25_dev->forward != ((void*)0))
   return -EINVAL;
  ax25_dev->forward = fwd_dev->dev;
  break;

 case 128:
  if (ax25_dev->forward == ((void*)0))
   return -EINVAL;
  ax25_dev->forward = ((void*)0);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
