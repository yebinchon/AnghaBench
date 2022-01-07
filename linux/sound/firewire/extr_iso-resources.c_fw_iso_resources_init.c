
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int dummy; } ;
struct fw_iso_resources {unsigned long long channels_mask; int allocated; int mutex; struct fw_unit* unit; } ;


 int mutex_init (int *) ;

int fw_iso_resources_init(struct fw_iso_resources *r, struct fw_unit *unit)
{
 r->channels_mask = ~0uLL;
 r->unit = unit;
 mutex_init(&r->mutex);
 r->allocated = 0;

 return 0;
}
