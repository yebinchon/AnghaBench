
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct control_runtime {TYPE_1__* chip; } ;
struct comm_runtime {int (* write16 ) (struct comm_runtime*,int,int,int ,int ) ;} ;
struct TYPE_2__ {struct comm_runtime* comm; struct usb_device* dev; } ;


 int CONTROL_N_RATES ;
 int EINVAL ;
 int * rates_6fire_vh ;
 int * rates_6fire_vl ;
 int * rates_altsetting ;
 int stub1 (struct comm_runtime*,int,int,int ,int ) ;
 int usb_set_interface (struct usb_device*,int,int ) ;

__attribute__((used)) static int usb6fire_control_set_rate(struct control_runtime *rt, int rate)
{
 int ret;
 struct usb_device *device = rt->chip->dev;
 struct comm_runtime *comm_rt = rt->chip->comm;

 if (rate < 0 || rate >= CONTROL_N_RATES)
  return -EINVAL;

 ret = usb_set_interface(device, 1, rates_altsetting[rate]);
 if (ret < 0)
  return ret;


 ret = comm_rt->write16(comm_rt, 0x02, 0x01, rates_6fire_vl[rate],
   rates_6fire_vh[rate]);
 if (ret < 0)
  return ret;

 return 0;
}
