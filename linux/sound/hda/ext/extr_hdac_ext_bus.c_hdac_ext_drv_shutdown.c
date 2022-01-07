
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {void (* shutdown ) (int ) ;} ;


 int get_hdev (struct device*) ;
 TYPE_1__* get_hdrv (struct device*) ;
 void stub1 (int ) ;

__attribute__((used)) static void hdac_ext_drv_shutdown(struct device *dev)
{
 return (get_hdrv(dev))->shutdown(get_hdev(dev));
}
