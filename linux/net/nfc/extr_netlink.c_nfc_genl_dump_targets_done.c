
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dummy; } ;
struct netlink_callback {scalar_t__* args; } ;


 int nfc_put_device (struct nfc_dev*) ;

__attribute__((used)) static int nfc_genl_dump_targets_done(struct netlink_callback *cb)
{
 struct nfc_dev *dev = (struct nfc_dev *) cb->args[1];

 if (dev)
  nfc_put_device(dev);

 return 0;
}
