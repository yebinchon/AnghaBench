
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_4__ {char const* name; int * pm; int shutdown; int remove; int probe; int * bus; struct module* owner; } ;
struct TYPE_3__ {TYPE_2__ driver; int unsol_event; int match; int type; } ;
struct hda_codec_driver {TYPE_1__ core; } ;


 int HDA_DEV_LEGACY ;
 int driver_register (TYPE_2__*) ;
 int hda_codec_driver_pm ;
 int hda_codec_driver_probe ;
 int hda_codec_driver_remove ;
 int hda_codec_driver_shutdown ;
 int hda_codec_match ;
 int hda_codec_unsol_event ;
 int snd_hda_bus_type ;

int __hda_codec_driver_register(struct hda_codec_driver *drv, const char *name,
          struct module *owner)
{
 drv->core.driver.name = name;
 drv->core.driver.owner = owner;
 drv->core.driver.bus = &snd_hda_bus_type;
 drv->core.driver.probe = hda_codec_driver_probe;
 drv->core.driver.remove = hda_codec_driver_remove;
 drv->core.driver.shutdown = hda_codec_driver_shutdown;
 drv->core.driver.pm = &hda_codec_driver_pm;
 drv->core.type = HDA_DEV_LEGACY;
 drv->core.match = hda_codec_match;
 drv->core.unsol_event = hda_codec_unsol_event;
 return driver_register(&drv->core.driver);
}
