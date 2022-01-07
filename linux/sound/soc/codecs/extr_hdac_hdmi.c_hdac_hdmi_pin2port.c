
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_hdmi_priv {TYPE_1__* drv_data; } ;
struct hdac_device {int dev; } ;
struct TYPE_2__ {int* port_map; int port_num; } ;


 int dev_err (int *,char*,int) ;
 struct hdac_hdmi_priv* hdev_to_hdmi_priv (struct hdac_device*) ;

__attribute__((used)) static int hdac_hdmi_pin2port(void *aptr, int pin)
{
 struct hdac_device *hdev = aptr;
 struct hdac_hdmi_priv *hdmi = hdev_to_hdmi_priv(hdev);
 const int *map = hdmi->drv_data->port_map;
 int i;

 if (!hdmi->drv_data->port_num)
  return pin - 4;





 for (i = 0; i < hdmi->drv_data->port_num; i++) {
  if (pin == map[i])
   return i + 1;
 }


 dev_err(&hdev->dev, "Can't find the port for pin %d\n", pin);
 return -1;
}
