
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_iso_resources {int allocated; int bandwidth_overhead; int bandwidth; unsigned long long channel; int mutex; TYPE_2__* unit; int generation; } ;
struct fw_card {int lock; int generation; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {struct fw_card* card; } ;


 int EAGAIN ;
 int EBUSY ;
 int current_bandwidth_overhead (struct fw_card*) ;
 int dev_err (int *,char*) ;
 int fw_iso_resource_manage (struct fw_card*,int ,unsigned long long,int*,int*,int) ;
 TYPE_1__* fw_parent_device (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int fw_iso_resources_update(struct fw_iso_resources *r)
{
 struct fw_card *card = fw_parent_device(r->unit)->card;
 int bandwidth, channel;

 mutex_lock(&r->mutex);

 if (!r->allocated) {
  mutex_unlock(&r->mutex);
  return 0;
 }

 spin_lock_irq(&card->lock);
 r->generation = card->generation;
 r->bandwidth_overhead = current_bandwidth_overhead(card);
 spin_unlock_irq(&card->lock);

 bandwidth = r->bandwidth + r->bandwidth_overhead;

 fw_iso_resource_manage(card, r->generation, 1uLL << r->channel,
          &channel, &bandwidth, 1);




 if (channel < 0 && channel != -EAGAIN) {
  r->allocated = 0;
  if (channel == -EBUSY)
   dev_err(&r->unit->device,
    "isochronous resources exhausted\n");
  else
   dev_err(&r->unit->device,
    "isochronous resource allocation failed\n");
 }

 mutex_unlock(&r->mutex);

 return channel;
}
