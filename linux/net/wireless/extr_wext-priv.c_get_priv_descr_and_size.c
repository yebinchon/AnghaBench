
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* wireless_handlers; } ;
struct iw_priv_args {unsigned int cmd; char* name; int set_args; int get_args; } ;
typedef int __u32 ;
struct TYPE_2__ {int num_private_args; struct iw_priv_args* private_args; } ;


 int IFNAMSIZ ;
 scalar_t__ IW_IS_SET (unsigned int) ;
 int IW_PRIV_SIZE_FIXED ;
 int get_priv_size (int) ;

__attribute__((used)) static int get_priv_descr_and_size(struct net_device *dev, unsigned int cmd,
       const struct iw_priv_args **descrp)
{
 const struct iw_priv_args *descr;
 int i, extra_size;

 descr = ((void*)0);
 for (i = 0; i < dev->wireless_handlers->num_private_args; i++) {
  if (cmd == dev->wireless_handlers->private_args[i].cmd) {
   descr = &dev->wireless_handlers->private_args[i];
   break;
  }
 }

 extra_size = 0;
 if (descr) {
  if (IW_IS_SET(cmd)) {
   int offset = 0;

   if (descr->name[0] == '\0')

    offset = sizeof(__u32);


   extra_size = get_priv_size(descr->set_args);


   if ((descr->set_args & IW_PRIV_SIZE_FIXED) &&
      ((extra_size + offset) <= IFNAMSIZ))
    extra_size = 0;
  } else {

   extra_size = get_priv_size(descr->get_args);


   if ((descr->get_args & IW_PRIV_SIZE_FIXED) &&
      (extra_size <= IFNAMSIZ))
    extra_size = 0;
  }
 }
 *descrp = descr;
 return extra_size;
}
