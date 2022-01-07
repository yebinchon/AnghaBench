
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {struct iw_handler_def* wireless_handlers; TYPE_2__* ieee80211_ptr; } ;
struct iw_handler_def {unsigned int num_standard; unsigned int num_private; int ** private; int ** standard; } ;
typedef int * iw_handler ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {struct iw_handler_def* wext; } ;


 unsigned int IW_IOCTL_IDX (unsigned int) ;
 unsigned int SIOCIWFIRSTPRIV ;

__attribute__((used)) static iw_handler get_handler(struct net_device *dev, unsigned int cmd)
{

 unsigned int index;
 const struct iw_handler_def *handlers = ((void*)0);
 if (!handlers)
  return ((void*)0);


 index = IW_IOCTL_IDX(cmd);
 if (index < handlers->num_standard)
  return handlers->standard[index];
 return ((void*)0);
}
