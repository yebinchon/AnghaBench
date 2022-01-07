
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int (* remove ) (int ) ;} ;


 int get_hdev (struct device*) ;
 TYPE_1__* get_hdrv (struct device*) ;
 int stub1 (int ) ;

__attribute__((used)) static int hdac_ext_drv_remove(struct device *dev)
{
 return (get_hdrv(dev))->remove(get_hdev(dev));
}
