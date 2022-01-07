
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iso_resources {int mutex; int allocated; } ;


 int WARN_ON (int ) ;
 int mutex_destroy (int *) ;

void fw_iso_resources_destroy(struct fw_iso_resources *r)
{
 WARN_ON(r->allocated);
 mutex_destroy(&r->mutex);
}
