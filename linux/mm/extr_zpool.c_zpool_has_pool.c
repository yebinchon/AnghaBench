
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpool_driver {int dummy; } ;


 int request_module (char*,char*) ;
 struct zpool_driver* zpool_get_driver (char*) ;
 int zpool_put_driver (struct zpool_driver*) ;

bool zpool_has_pool(char *type)
{
 struct zpool_driver *driver = zpool_get_driver(type);

 if (!driver) {
  request_module("zpool-%s", type);
  driver = zpool_get_driver(type);
 }

 if (!driver)
  return 0;

 zpool_put_driver(driver);
 return 1;
}
