
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_iso_resources {int allocated; int bandwidth; int bandwidth_overhead; int channel; int mutex; TYPE_2__* unit; int channels_mask; int generation; } ;
struct fw_card {int lock; int generation; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {struct fw_card* card; } ;


 int EAGAIN ;
 int EBADFD ;
 int EBUSY ;
 scalar_t__ WARN_ON (int) ;
 int current_bandwidth_overhead (struct fw_card*) ;
 int dev_err (int *,char*) ;
 int fw_iso_resource_manage (struct fw_card*,int ,int ,int*,int*,int) ;
 TYPE_1__* fw_parent_device (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int packet_bandwidth (unsigned int,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_isoch_resource_delay_after_bus_reset (struct fw_card*) ;

int fw_iso_resources_allocate(struct fw_iso_resources *r,
         unsigned int max_payload_bytes, int speed)
{
 struct fw_card *card = fw_parent_device(r->unit)->card;
 int bandwidth, channel, err;

 if (WARN_ON(r->allocated))
  return -EBADFD;

 r->bandwidth = packet_bandwidth(max_payload_bytes, speed);

retry_after_bus_reset:
 spin_lock_irq(&card->lock);
 r->generation = card->generation;
 r->bandwidth_overhead = current_bandwidth_overhead(card);
 spin_unlock_irq(&card->lock);

 err = wait_isoch_resource_delay_after_bus_reset(card);
 if (err < 0)
  return err;

 mutex_lock(&r->mutex);

 bandwidth = r->bandwidth + r->bandwidth_overhead;
 fw_iso_resource_manage(card, r->generation, r->channels_mask,
          &channel, &bandwidth, 1);
 if (channel == -EAGAIN) {
  mutex_unlock(&r->mutex);
  goto retry_after_bus_reset;
 }
 if (channel >= 0) {
  r->channel = channel;
  r->allocated = 1;
 } else {
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
