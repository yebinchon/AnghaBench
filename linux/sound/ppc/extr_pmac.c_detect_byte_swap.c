
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {scalar_t__ can_duplex; scalar_t__ can_byte_swap; TYPE_1__* node; } ;
struct device_node {struct device_node* parent; } ;
struct TYPE_2__ {struct device_node* parent; } ;


 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;

__attribute__((used)) static void detect_byte_swap(struct snd_pmac *chip)
{
 struct device_node *mio;


 for (mio = chip->node->parent; mio; mio = mio->parent) {
  if (of_node_name_eq(mio, "mac-io")) {
   if (of_device_is_compatible(mio, "Keylargo"))
    chip->can_byte_swap = 0;
   break;
  }
 }


 if (of_machine_is_compatible("PowerBook3,1") ||
     of_machine_is_compatible("PowerBook2,1"))
  chip->can_byte_swap = 0 ;

 if (of_machine_is_compatible("PowerBook2,1"))
  chip->can_duplex = 0;
}
