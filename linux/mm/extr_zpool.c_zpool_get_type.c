
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpool {TYPE_1__* driver; } ;
struct TYPE_2__ {char const* type; } ;



const char *zpool_get_type(struct zpool *zpool)
{
 return zpool->driver->type;
}
