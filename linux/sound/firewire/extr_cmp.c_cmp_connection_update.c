
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmp_connection {int connected; scalar_t__ direction; int mutex; int resources; } ;


 scalar_t__ CMP_OUTPUT ;
 int SUCCEED_ON_BUS_RESET ;
 int fw_iso_resources_update (int *) ;
 int ipcr_set_modify ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opcr_set_modify ;
 int pcr_modify (struct cmp_connection*,int ,int ,int ) ;
 int pcr_set_check ;

int cmp_connection_update(struct cmp_connection *c)
{
 int err;

 mutex_lock(&c->mutex);

 if (!c->connected) {
  mutex_unlock(&c->mutex);
  return 0;
 }

 err = fw_iso_resources_update(&c->resources);
 if (err < 0)
  goto err_unconnect;

 if (c->direction == CMP_OUTPUT)
  err = pcr_modify(c, opcr_set_modify, pcr_set_check,
     SUCCEED_ON_BUS_RESET);
 else
  err = pcr_modify(c, ipcr_set_modify, pcr_set_check,
     SUCCEED_ON_BUS_RESET);

 if (err < 0)
  goto err_unconnect;

 mutex_unlock(&c->mutex);

 return 0;

err_unconnect:
 c->connected = 0;
 mutex_unlock(&c->mutex);

 return err;
}
