
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atm_dev {int type; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct atm_dev* to_atm_dev (struct device*) ;

__attribute__((used)) static ssize_t show_type(struct device *cdev,
    struct device_attribute *attr, char *buf)
{
 struct atm_dev *adev = to_atm_dev(cdev);

 return scnprintf(buf, PAGE_SIZE, "%s\n", adev->type);
}
