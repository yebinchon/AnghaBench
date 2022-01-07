
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmp_connection {int resources; int mutex; int connected; } ;


 int WARN_ON (int ) ;
 int fw_iso_resources_destroy (int *) ;
 int mutex_destroy (int *) ;

void cmp_connection_destroy(struct cmp_connection *c)
{
 WARN_ON(c->connected);
 mutex_destroy(&c->mutex);
 fw_iso_resources_destroy(&c->resources);
}
