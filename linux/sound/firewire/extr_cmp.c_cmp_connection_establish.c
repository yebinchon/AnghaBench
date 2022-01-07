
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmp_connection {int connected; scalar_t__ direction; int mutex; int resources; } ;


 int ABORT_ON_BUS_RESET ;
 scalar_t__ CMP_OUTPUT ;
 int EAGAIN ;
 int EISCONN ;
 scalar_t__ WARN_ON (int) ;
 int fw_iso_resources_update (int *) ;
 int ipcr_set_modify ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opcr_set_modify ;
 int pcr_modify (struct cmp_connection*,int ,int ,int ) ;
 int pcr_set_check ;

int cmp_connection_establish(struct cmp_connection *c)
{
 int err;

 mutex_lock(&c->mutex);

 if (WARN_ON(c->connected)) {
  mutex_unlock(&c->mutex);
  return -EISCONN;
 }

retry_after_bus_reset:
 if (c->direction == CMP_OUTPUT)
  err = pcr_modify(c, opcr_set_modify, pcr_set_check,
     ABORT_ON_BUS_RESET);
 else
  err = pcr_modify(c, ipcr_set_modify, pcr_set_check,
     ABORT_ON_BUS_RESET);

 if (err == -EAGAIN) {
  err = fw_iso_resources_update(&c->resources);
  if (err >= 0)
   goto retry_after_bus_reset;
 }
 if (err >= 0)
  c->connected = 1;

 mutex_unlock(&c->mutex);

 return err;
}
