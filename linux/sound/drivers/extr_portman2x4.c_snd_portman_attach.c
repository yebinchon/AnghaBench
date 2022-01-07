
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct parport {int dummy; } ;


 int PLATFORM_DRIVER ;
 size_t device_count ;
 scalar_t__ platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (int ,size_t) ;
 int platform_device_put (struct platform_device*) ;
 int platform_device_unregister (struct platform_device*) ;
 struct platform_device** platform_devices ;
 int platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct parport*) ;

__attribute__((used)) static void snd_portman_attach(struct parport *p)
{
 struct platform_device *device;

 device = platform_device_alloc(PLATFORM_DRIVER, device_count);
 if (!device)
  return;


 platform_set_drvdata(device, p);

 if (platform_device_add(device) < 0) {
  platform_device_put(device);
  return;
 }



 if (!platform_get_drvdata(device)) {
  platform_device_unregister(device);
  return;
 }


 platform_devices[device_count] = device;
 device_count++;
}
