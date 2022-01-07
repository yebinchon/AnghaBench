
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int (* probe ) (int ) ;} ;


 int get_hdev (struct device*) ;
 TYPE_1__* get_hdrv (struct device*) ;
 int stub1 (int ) ;

__attribute__((used)) static int hda_ext_drv_probe(struct device *dev)
{
 return (get_hdrv(dev))->probe(get_hdev(dev));
}
