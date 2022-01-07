
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_tag_driver {int dummy; } ;


 int dsa_tag_driver_unregister (struct dsa_tag_driver*) ;

void dsa_tag_drivers_unregister(struct dsa_tag_driver *dsa_tag_driver_array[],
    unsigned int count)
{
 unsigned int i;

 for (i = 0; i < count; i++)
  dsa_tag_driver_unregister(dsa_tag_driver_array[i]);
}
