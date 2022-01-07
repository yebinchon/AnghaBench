
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct dsa_tag_driver {int dummy; } ;


 int dsa_tag_driver_register (struct dsa_tag_driver*,struct module*) ;

void dsa_tag_drivers_register(struct dsa_tag_driver *dsa_tag_driver_array[],
         unsigned int count, struct module *owner)
{
 unsigned int i;

 for (i = 0; i < count; i++)
  dsa_tag_driver_register(dsa_tag_driver_array[i], owner);
}
