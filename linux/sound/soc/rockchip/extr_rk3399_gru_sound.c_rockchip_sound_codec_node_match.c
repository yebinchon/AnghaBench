
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ bus_type; int compatible; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 struct device* bus_find_device_by_of_node (scalar_t__,struct device_node*) ;
 TYPE_1__* dailink_match ;
 int of_device_is_compatible (struct device_node*,int ) ;
 int put_device (struct device*) ;

__attribute__((used)) static int rockchip_sound_codec_node_match(struct device_node *np_codec)
{
 struct device *dev;
 int i;

 for (i = 0; i < ARRAY_SIZE(dailink_match); i++) {
  if (!of_device_is_compatible(np_codec,
          dailink_match[i].compatible))
   continue;

  if (dailink_match[i].bus_type) {
   dev = bus_find_device_by_of_node(dailink_match[i].bus_type,
        np_codec);
   if (!dev)
    continue;
   put_device(dev);
  }

  return i;
 }
 return -1;
}
