
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dev; } ;


 int dev_name (int *) ;
 int nfc_dev_down (struct nfc_dev*) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static int nfc_rfkill_set_block(void *data, bool blocked)
{
 struct nfc_dev *dev = data;

 pr_debug("%s blocked %d", dev_name(&dev->dev), blocked);

 if (!blocked)
  return 0;

 nfc_dev_down(dev);

 return 0;
}
