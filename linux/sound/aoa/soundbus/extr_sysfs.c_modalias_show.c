
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct soundbus_dev {scalar_t__* modalias; struct platform_device ofdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int of_node_get_device_type (int ) ;
 int sprintf (char*,char*,int ,char,int ) ;
 int strcat (char*,char*) ;
 int strlcpy (char*,scalar_t__*,int) ;
 int strlen (char*) ;
 struct soundbus_dev* to_soundbus_device (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct soundbus_dev *sdev = to_soundbus_device(dev);
 struct platform_device *of = &sdev->ofdev;
 int length;

 if (*sdev->modalias) {
  strlcpy(buf, sdev->modalias, sizeof(sdev->modalias) + 1);
  strcat(buf, "\n");
  length = strlen(buf);
 } else {
  length = sprintf(buf, "of:N%pOFn%c%s\n",
     of->dev.of_node, 'T',
                                 of_node_get_device_type(of->dev.of_node));
 }

 return length;
}
