
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_unregister_reboot_notifier ;
 int devres_add (struct device*,struct notifier_block**) ;
 struct notifier_block** devres_alloc (int ,int,int ) ;
 int devres_free (struct notifier_block**) ;
 int register_reboot_notifier (struct notifier_block*) ;

int devm_register_reboot_notifier(struct device *dev, struct notifier_block *nb)
{
 struct notifier_block **rcnb;
 int ret;

 rcnb = devres_alloc(devm_unregister_reboot_notifier,
       sizeof(*rcnb), GFP_KERNEL);
 if (!rcnb)
  return -ENOMEM;

 ret = register_reboot_notifier(nb);
 if (!ret) {
  *rcnb = nb;
  devres_add(dev, rcnb);
 } else {
  devres_free(rcnb);
 }

 return ret;
}
