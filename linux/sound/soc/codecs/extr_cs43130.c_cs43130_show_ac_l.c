
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HP_LEFT ;
 int cs43130_show_ac (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t cs43130_show_ac_l(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 return cs43130_show_ac(dev, buf, HP_LEFT);
}
