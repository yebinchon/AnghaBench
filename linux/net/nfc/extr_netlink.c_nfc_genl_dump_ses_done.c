
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {scalar_t__* args; } ;
struct class_dev_iter {int dummy; } ;


 int kfree (struct class_dev_iter*) ;
 int nfc_device_iter_exit (struct class_dev_iter*) ;

__attribute__((used)) static int nfc_genl_dump_ses_done(struct netlink_callback *cb)
{
 struct class_dev_iter *iter = (struct class_dev_iter *) cb->args[0];

 nfc_device_iter_exit(iter);
 kfree(iter);

 return 0;
}
