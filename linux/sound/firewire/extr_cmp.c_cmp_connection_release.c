
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmp_connection {int mutex; int resources; } ;


 int fw_iso_resources_free (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cmp_connection_release(struct cmp_connection *c)
{
 mutex_lock(&c->mutex);
 fw_iso_resources_free(&c->resources);
 mutex_unlock(&c->mutex);
}
