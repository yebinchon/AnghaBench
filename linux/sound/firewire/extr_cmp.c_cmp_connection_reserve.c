
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int unit; int allocated; } ;
struct cmp_connection {int mutex; int speed; TYPE_2__ resources; int max_speed; } ;
struct TYPE_3__ {int max_speed; } ;


 int EBUSY ;
 scalar_t__ WARN_ON (int ) ;
 int fw_iso_resources_allocate (TYPE_2__*,unsigned int,int ) ;
 TYPE_1__* fw_parent_device (int ) ;
 int min (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cmp_connection_reserve(struct cmp_connection *c,
      unsigned int max_payload_bytes)
{
 int err;

 mutex_lock(&c->mutex);

 if (WARN_ON(c->resources.allocated)) {
  err = -EBUSY;
  goto end;
 }

 c->speed = min(c->max_speed,
         fw_parent_device(c->resources.unit)->max_speed);

 err = fw_iso_resources_allocate(&c->resources, max_payload_bytes,
     c->speed);
end:
 mutex_unlock(&c->mutex);

 return err;
}
