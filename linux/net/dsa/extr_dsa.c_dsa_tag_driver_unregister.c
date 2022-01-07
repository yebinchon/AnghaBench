
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_tag_driver {int list; } ;


 int dsa_tag_drivers_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dsa_tag_driver_unregister(struct dsa_tag_driver *dsa_tag_driver)
{
 mutex_lock(&dsa_tag_drivers_lock);
 list_del(&dsa_tag_driver->list);
 mutex_unlock(&dsa_tag_drivers_lock);
}
