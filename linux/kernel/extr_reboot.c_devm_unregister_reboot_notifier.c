
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int unregister_reboot_notifier (struct notifier_block*) ;

__attribute__((used)) static void devm_unregister_reboot_notifier(struct device *dev, void *res)
{
 WARN_ON(unregister_reboot_notifier(*(struct notifier_block **)res));
}
