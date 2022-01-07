
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct dsa_tag_driver {int list; struct module* owner; } ;


 int dsa_tag_drivers_list ;
 int dsa_tag_drivers_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dsa_tag_driver_register(struct dsa_tag_driver *dsa_tag_driver,
        struct module *owner)
{
 dsa_tag_driver->owner = owner;

 mutex_lock(&dsa_tag_drivers_lock);
 list_add_tail(&dsa_tag_driver->list, &dsa_tag_drivers_list);
 mutex_unlock(&dsa_tag_drivers_lock);
}
