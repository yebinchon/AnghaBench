
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atm_dev {scalar_t__ signal; } ;
typedef int ssize_t ;


 scalar_t__ ATM_PHY_SIG_LOST ;
 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int) ;
 struct atm_dev* to_atm_dev (struct device*) ;

__attribute__((used)) static ssize_t show_carrier(struct device *cdev,
       struct device_attribute *attr, char *buf)
{
 struct atm_dev *adev = to_atm_dev(cdev);

 return scnprintf(buf, PAGE_SIZE, "%d\n",
    adev->signal == ATM_PHY_SIG_LOST ? 0 : 1);
}
