
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_ext_bus_ops {int dummy; } ;


 struct hdac_ext_bus_ops hdac_ops ;

struct hdac_ext_bus_ops *snd_soc_hdac_hda_get_ops(void)
{
 return &hdac_ops;
}
