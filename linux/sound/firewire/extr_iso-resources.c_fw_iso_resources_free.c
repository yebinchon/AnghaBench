
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_iso_resources {int allocated; int bandwidth; int bandwidth_overhead; unsigned long long channel; int mutex; TYPE_2__* unit; int generation; } ;
struct fw_card {int dummy; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {struct fw_card* card; } ;


 int dev_err (int *,char*) ;
 int fw_iso_resource_manage (struct fw_card*,int ,unsigned long long,int*,int*,int) ;
 TYPE_1__* fw_parent_device (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void fw_iso_resources_free(struct fw_iso_resources *r)
{
 struct fw_card *card;
 int bandwidth, channel;


 if (r->unit == ((void*)0))
  return;
 card = fw_parent_device(r->unit)->card;

 mutex_lock(&r->mutex);

 if (r->allocated) {
  bandwidth = r->bandwidth + r->bandwidth_overhead;
  fw_iso_resource_manage(card, r->generation, 1uLL << r->channel,
           &channel, &bandwidth, 0);
  if (channel < 0)
   dev_err(&r->unit->device,
    "isochronous resource deallocation failed\n");

  r->allocated = 0;
 }

 mutex_unlock(&r->mutex);
}
