
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {TYPE_2__* wireless_handlers; } ;
struct iw_request_info {int dummy; } ;
struct iw_priv_args {int dummy; } ;
struct TYPE_4__ {scalar_t__ num_private_args; int * private_args; } ;


 int E2BIG ;
 int EOPNOTSUPP ;
 int memcpy (char*,int *,int) ;

int iw_handler_get_private(struct net_device * dev,
      struct iw_request_info * info,
      union iwreq_data * wrqu,
      char * extra)
{

 if ((dev->wireless_handlers->num_private_args == 0) ||
    (dev->wireless_handlers->private_args == ((void*)0)))
  return -EOPNOTSUPP;


 if (wrqu->data.length < dev->wireless_handlers->num_private_args) {



  wrqu->data.length = dev->wireless_handlers->num_private_args;
  return -E2BIG;
 }


 wrqu->data.length = dev->wireless_handlers->num_private_args;


 memcpy(extra, dev->wireless_handlers->private_args,
        sizeof(struct iw_priv_args) * wrqu->data.length);

 return 0;
}
