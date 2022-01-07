
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct atm_dev {int dummy; } ;


 int kfree (struct atm_dev*) ;
 struct atm_dev* to_atm_dev (struct device*) ;

__attribute__((used)) static void atm_release(struct device *cdev)
{
 struct atm_dev *adev = to_atm_dev(cdev);

 kfree(adev);
}
