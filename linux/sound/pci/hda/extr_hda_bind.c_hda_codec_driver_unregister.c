
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct hda_codec_driver {TYPE_1__ core; } ;


 int driver_unregister (int *) ;

void hda_codec_driver_unregister(struct hda_codec_driver *drv)
{
 driver_unregister(&drv->core.driver);
}
